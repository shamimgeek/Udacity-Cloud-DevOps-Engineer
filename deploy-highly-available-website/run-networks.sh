#!/bin/bash

STACK_NAME="highly-available-website-networks"
ACTION=$1

case $ACTION in

  create)
    aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://network.yaml \
    --parameters file://network-parameters.json \
    --region=eu-central-1
    ;;

  update)
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://network.yaml \
    --parameters file://network-parameters.json \
    --region=eu-central-1
    ;;

  delete)
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region=eu-central-1
    ;;

  *)
    echo "unknown argument, expecting (create | update | delete)"
    ;;
esac
