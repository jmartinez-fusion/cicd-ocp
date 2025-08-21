#!/bin/bash

while true; do
    oc logs deployment/hola-pod | grep -v "Found"
    sleep 3
done
