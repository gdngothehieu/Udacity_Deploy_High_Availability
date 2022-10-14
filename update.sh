#!/bin/bash
echo "Creating stack ..... "
 aws cloudformation package --template-file nested.yml --s3-bucket super-aws-s3-udagram > out.yml
 aws cloudformation update-stack --stack-name super-immortal-stack --template-body file://out.yml  --capabilities "CAPABILITY_NAMED_IAM" --region=us-east-1

$SHELL