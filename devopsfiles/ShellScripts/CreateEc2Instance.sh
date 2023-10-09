#!/bin/bash
#Creating Ec2 Instance Through AWS CLI

#Setting Debug Mode:
#set -x 

#Stating The Script 
#echo "Starting Script"

#Fierst Create A Arrays Of Servers/Instances
EC2_NAMES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payments" "dispatch" "web")

#Setting Image id below
Image_id=ami-03265a0778a880afb

#Setting Security Group
Sec_Group=sg-07af39f9bad6f7e41

#Setting Instance Type
Inst_Type=""


for i in "${EC2_NAMES[0]}"
do
    if [[ $i == "mongodb" || $i == "mysql" ]]
    then
        Inst_Type="t3.medium"
    else
        Inst_Type="t2.micro"
    fi
    echo "Creating $i Instance"
    Ip_Address=$(aws ec2 run-instances --image-id $Image_id  --instance-type $Inst_Type --security-group-ids $Sec_Group --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" | jq -r '.Instances[0].PrivateIpAddress')
    echo "Created $i = $Ip_Address "
done


