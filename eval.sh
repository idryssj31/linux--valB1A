#!/bin/bash
#ca marche pas

if exist D:\tmp\in
    echo il existe
)
else
(
    mkdir D:\tmp\in
    echo il existe pas 
)
fi
ls _1
var=$(ls -1 /tmp/in/*)
for fich in var 
do
    tar cvzf tarfile-${f#filenames.}.tar.gz
done
