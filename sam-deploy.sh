#!/bin/bash

aws cloudformation package \
--s3-bucket plant.draw.io \
--output-template-file target/serverless-output.yaml \
--template-file sam-template.yml

aws cloudformation deploy \
--template-file target/serverless-output.yaml \
--stack-name drawio-plantuml \
--capabilities CAPABILITY_IAM
