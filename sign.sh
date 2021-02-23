#!/bin/bash

# get the name of the file to sign
SIGNFILE=$1
# get the current timestamp
TIMESTAMP=$(date +%F\ %T) 
# write the timestamp to a human readable file
echo $TIMESTAMP > $SIGNFILE.timestamp

# get the key name
source keyname

# hash the digest for the file and the timestamp with a private key
cat $SIGNFILE $SIGNFILE.timestamp|openssl dgst -sha256 -sign $KEY -out $SIGNFILE.signature