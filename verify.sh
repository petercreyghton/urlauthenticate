#!/bin/bash

# get the name of the file to verify
# assumed there's a timestamp file along with it
VERIFYFILE=$1

# get the key name
source keyname

# verify the file and timestamp with the public key
cat $VERIFYFILE $VERIFYFILE.timestamp | openssl dgst -sha256 -verify $KEY.pem -signature $VERIFYFILE.signature
