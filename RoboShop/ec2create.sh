#!/bin/bash

EC2_NAMES=$@
IMAGEID=ami-03265a0778a880afb
SECURITYGGROUP=sg-079460af07ad6e0fd
INSTANCETYPE=""

for i in "${EC2_NAMES[@]}"
do
    if [[ $i == "mongodb" || $i == "mysql" ]]
    then
        INSTANCETYPE="t3.medium"
    else
        INSTANCETYPE="t2.micro"
    fi
    echo "Creating $i Instance"
    IPADDR=$(aws ec2 run-instances --image-id $IMAGEID  --instance-type $INSTANCETYPE --security-group-ids $Sec_Group --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" | jq -r '.Instances[0].PrivateIpAddress')
    echo "Created $i = $IPADDR "
done
