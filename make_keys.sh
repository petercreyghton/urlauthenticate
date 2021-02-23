#!/bin/bash

# generate keypair
ssh-keygen -t rsa -f signkey -b 4096 -N "" -A

# generate pem file for public key
openssl pkey -in signkey -pubout -out publickey.pem
