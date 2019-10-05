---
title: An introduction to AWS Lambda functions
author: Sean Davis
date: '2018-12-10'
slug: an-introduction-to-aws-lambda-functions
categories:
  - Notes
  - IT
tags:
  - cloud
  - IT
  - AWS
  - lambda
draft: true
image:
  caption: ''
  focal_point: ''
---

AWS lambda

# create

need to zip up dependencies

zip lambdas.zip lambda_handlers.py sra_parsers.py


aws lambda create-function --function-name sra_to_json --zip-file fileb://lambdas.zip --handler lambda_handlers.lambda_return_full_experiment_json --runtime python3.6 --role arn:aws:iam::377200973048:role/lambda_s3_exec_role


# Invoke

aws lambda invoke --function-name sra_to_json --log-type Tail --payload '{"accession":"SRX000273"}' /tmp/abc.txt

# Concurrency

1000 total, reserve for certain functions to limit, etc.

aws lambda put-function-concurrency --function-name sra_to_json --reserved-concurrent-executions 20

# timeout and memory

aws lambda update-function-configuration --function-name sra_to_json --timeout 15


# logging

https://github.com/jorgebastida/awslogs

awslogs get /aws/lambda/sra_to_json ALL --watch
