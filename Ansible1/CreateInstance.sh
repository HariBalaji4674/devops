#!/bin/bash
NAME=$1
INSTANCE_TYPE=t2.micro
SECURITY_GROUP=sg-07af39f9bad6f7e41
IMAGE_ID=ami-067d1e60475437da2

InstanceId=$(aws ec2 run-instances --image-id $IMAGE_ID  --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$NAME}]" | jq -r '.Instances[0].InstanceId')
echo "The instanceid : $InstanceId"

# Private_Addr=$(aws ec2 run-instances --image-id $IMAGE_ID  --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$NAME}]" | jq -r '.Instances[0].PrivateIpAddress')
# echo "The instanceid : $Private_Addr"

#IP_ADDR=$(aws ec2 run-instances --image-id $IMAGE_ID  --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP #--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$NAME}]"| jq -r '.Instances[0].PrivateIpAddress')

#echo "The Private Address is : $IP_ADDR"

