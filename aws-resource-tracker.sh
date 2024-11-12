#!/bin/bash


#####################
## Author: Anuradha Raj
## Date: 12th-Nov
##
## Version: v1
##
## This script will report the aws resourse usage
#######################

set -x

##AWS S3
##AWS EC2
##AWS Lambda
##AWS IAM USers


## list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker


## list EC2 Instances
echo "Print list of ec2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


## list lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker


## list IAM Users
echo "Print list of IAM Users"
aws iam list-users
