#!/bin/bash

total=0
lineas=`cat consumos.txt | grep $1 | wc -l`

for i in `seq 2 $lineas`; do
        ciudad=`cat consumos.txt | grep $1 | head -n$i | tail -n1 | grep $1`
        consumo=`cat consumos.txt | grep $1 | head -n$i | tail -n1 | awk '{print $4}'`
        total=$((total+consumo))
done
media=$((total/lineas))
echo "la media de la ciudad de $1 es $media"