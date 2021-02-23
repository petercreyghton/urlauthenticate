#!/bin/bash

# set key name
KEY=signkey
echo "KEY=$KEY">keyname

# generate keypair
ssh-keygen -t rsa -f $KEY -b 4096 -N "" -A

# generate pem file for public key
openssl pkey -in $KEY -pubout -out $KEY.pem
