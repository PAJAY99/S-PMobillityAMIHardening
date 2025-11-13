#!/bin/bash
AMI_ID=$(aws ec2 describe-images --owners self --query "Images[-1].ImageId" --output text)
aws ec2 create-tags --resources $AMI_ID --tags Key=Status,Value=Whitelisted
echo "✅ AMI $AMI_ID tagged as Whitelisted"
