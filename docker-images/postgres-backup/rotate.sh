#!/bin/sh
BASE_FILE_NAME=$1
BASE_FOLDER=$2
FILES_TO_ROTATE=()
MAIN_FILE=$BASE_FILE_NAME'.bz2'

cd $BASE_FOLDER
if [ ! -f "$MAIN_FILE" ]; then
    echo "No hay nada para rotar (${BASE_FOLDER}/${MAIN_FILE} no existe)"
    exit 0
fi

# Creo los nombre de archivos soportados
for I in {4..1}
do
  FILES_TO_ROTATE+=($BASE_FILE_NAME'_'$I'.bz2') 
done


# Solo realizo rotacion si existe el archivo base
if test -f "${MAIN_FILE}"; then
    if test -f "${FILES_TO_ROTATE[0]}"; then
        rm ${FILES_TO_ROTATE[0]}
    fi
    for file in "${FILES_TO_ROTATE[@]}"
    do
        if test -f "${file}"; then
            mv $file $previous_filename 
        fi
        previous_filename=$file
    done
    mv $MAIN_FILE $previous_filename
fi

