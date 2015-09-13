#!/bin/bash

aws s3 sync ./localhost s3://$1 --acl public-read