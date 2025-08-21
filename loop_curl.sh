#!/bin/bash

while true; do
    # Mostrar solo la línea que contiene "Servidor escuchando"
    oc logs deployment/hola-pod | grep "Servidor escuchando"
    
    # Esperar 3 segundos
    sleep 3
done
