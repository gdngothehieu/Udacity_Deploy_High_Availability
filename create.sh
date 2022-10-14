#!/bin/bash
echo "Creating stack ..... "
  aws cloudformation package --template-file project2-nestedStack.yml --s3-bucket super-aws-s3-udagram  > out.yml
 aws cloudformation create-stack --stack-name super-immortal-stack --template-body file://out.yml  --region=us-east-1  --capabilities "CAPABILITY_NAMED_IAM"  --profile default
$SHELL