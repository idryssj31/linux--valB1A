#!/bin/bash

# création du répertoire /tmp/in s'il n'est pas existant.

[ ! -d /tmp/in ] || mkdir /tmp/in

cd /tmp/in
ls

for fich in /in
do
    gzip -f
done 
#On force la compréssion des fichiers se trouvent dans /in.

[ ! -d /tmp/out ] || mkdir /tmp/out

cp -r </tmp/in> </tmp/out>
#On copie le contenue de /tmp/in pour l'envoyer /dans tmp/out.