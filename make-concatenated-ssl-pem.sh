#!/bin/bash

usage() { 
        echo "This script helps you concatenate in order of the files for a concatenated PEM for SSL." 
        echo -e "\nUsage:\n$0 [path\\]private-key-filename [path\\]generated-certificate [path\\]trust-chain-certificate\n" 
        } 

if [[ ( $# == "--help") ||  $# == "-h" ]] 
        then 
                usage
                exit 0
        fi 

if [  $# -le 2 ] 
        then 
                usage
                exit 1
        fi 

KEY=$1
CERT=$2
CHAIN=$3

cat $KEY $CERT $CHAIN > concatenated-for-SSL.pem

exit 0
