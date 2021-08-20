# Exchange  script

Script para realizar backup de exchange


## Configuracion

Se debe configurar las carpetas de origen y destino del backup. 

`$EXCHANGE_FOLDER` es la carpeta de exchange desde donde se toman los backups
`$EXCHANGE_DEST_BACKUP_FOLDER` es la carpeta donde se guardan los backups
`$BACKUPS_TO_KEEP_PER_LEVEL` es la cantidad de backups a mantener

## Ejecucion

`exchange-move-logs.PS1 <Nivel de logs a backupear. Puede ser A, B, C>`

## Forma de trabajo

* Lista todos los archivos de la carpeta de logs especificada de exchange
* Ordena los archivos de manera descendente por su fecha de modificacion
* Extrae el nombre de cada archivo (se queda solo con el nombre)
* Verifica cual es el archivo de checkpoint y se queda con todos las archivos posteriores al archivo de checkpoint
* Mueve todos esos archivos de la carpeta de exchange a la carpeta de backups
* Comprime la carpeta de backups
* Borra todos los backups viejos, solo se queda con los ultimos $BACKUPS_TO_KEEP_PER_LEVEL
