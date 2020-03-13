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
echo $?
if $?>0
    exit 1
done

echo $?
if $?=22
    [ ! -d /tmp/out ] || mkdir /tmp/out
    cp -r </tmp/in> </tmp/out>
    #On copie le contenue de /tmp/in pour l'envoyer /dans tmp/out.
    cd /tmp/out
    find -type .lock
    echo "on continue"
    cd ..
done

cd /var/log
tail -f /var/log/auth.log
# Le contenu du log est déplacé dans le /out.
cp -r </var/log> </tmp/out>
#Contient toute les actions demandées.
cd /var/log/aptitude


