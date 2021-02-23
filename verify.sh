#!/bin/bash

# get the name of the file to verify
# assumed there's a timestamp file along with it
VERIFYFILE=$1

# verify the file and timestamp with the public key
cat $VERIFYFILE $VERIFYFILE.timestamp | openssl dgst -sha256 -verify my_id.pem -signature $VERIFYFILE.signature
