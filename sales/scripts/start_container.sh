#!/bin/bash

docker pull $ECR_URI:latest

docker run -d \
  --name sales-erp \
  -p 8080:8080 \
  $ECR_URI:latest

