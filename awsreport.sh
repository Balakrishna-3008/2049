#!/bin/bash
#######
#author:balakrishna
#date:4/10/2023
#this is aws report
#######
set -x

echo "print list of s3 buckets" 
aws s3 ls  >> resourcetracker


echo "print list of ec2 instances"
aws ec2 describe-instances  >> resourcetracker

# aws ec2 describe-instances | jq '.reservations[].Instances[].InstanceId'

echo "print list of lambda functions"
aws lambda list-functions  >> resourcetracker


echo "print list of IAM users"
aws iam list-users >> resourcetracker
