#!/bin/bash

while true; do
    # Obtener el nombre del primer pod que matchee la etiqueta "app=hola-pod"
    POD=$(oc get pods -l app=hola-pod -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)

    if [ -n "$POD" ]; then
        # Mostrar solo la línea que contiene tu mensaje
        oc logs "$POD" --tail=1 | grep "Servidor escuchando"
    else
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] No hay pods disponibles para 'hola-pod'"
    fi

    sleep 3
done
