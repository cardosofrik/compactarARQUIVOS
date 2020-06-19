#!/bin/bash  -x
# compactar.sh arquivo [arquivos ...]
#  Localiza  arquivo  pelo nome  e compactar usando ZIP..

compactarEM=${HOME}/
zipado=${compactarEM}compactado.zip

echo "-Buscando arquivo : $*.[todas extensões] - {$#}"
echo '[ ZIP ] - Armazenando arquivo compactado em ' ${compactarEM} 

for arquivo in $*
do
 echo "[ >> ] - `find  ${HOME} -type f -iname   "${arquivo}*" `"
 find  ${HOME} -type f -iname   "${arquivo}*" | zip -@ ${zipado}  | echo "[Total Compactado ] -  " ` wc -l`
 echo "[ COMPACTADO ] - Arquivos zipado : ${zipado}"
 unzip -l  ${zipado}
done
