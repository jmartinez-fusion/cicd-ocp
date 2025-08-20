#!/bin/bash

# URL a consultar
URL="http://route-sound-perch-dev.apps.ocp.sbox.fusionglobal.tech"

# Loop infinito
while true; do
    # Hacer la petición
    oc logs deployment/hola-pod 
    
    # Esperar 3 segundos
    sleep 3
done

