#!/bin/bash

# generate keypair
ssh-keygen -t rsa -f privatekey -b 4096 -nodes

# generate pem file for public key
openssl pkey -in my_id -pubout -out publickey.pem

