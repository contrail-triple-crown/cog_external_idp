#! /bin/bash
cdk bootstrap aws://$(aws sts get-caller-identity | jq .Account | sed 's/"//g')/$(aws configure get region)