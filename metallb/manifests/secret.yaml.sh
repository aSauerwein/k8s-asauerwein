#!/bin/bash
# just generate random 256 character alphanumeric string and create a sealed secret
random_string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-256} | head -n 1)
echo -n $random_string | kubectl create secret generic mysecret --dry-run=client --from-file=speaker-secret=/dev/stdin -o json | kubeseal > sealedsecret.yaml