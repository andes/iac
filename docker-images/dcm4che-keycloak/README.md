# Keycloak

Keycloak de DCM4Che modificado. Se crea una imagen del Keycloak de DCM4Che agregando

* postStart.sh que se debe ejecutar en el postStart lifecycle hook del deployment en kubernetes
* postStartScript.sh el script que es llamado por postStart (se divide para facilitar el log de este script)
* setEnv.sh permitiendo que escuche en todas las interfaces de red


## Build de imagen

`./build.sh <version de Keycloak de dcm4che`

Ej: `./build.sh 15.0.1`

Esto crea una nueva imagen basada en el tag especificado (parametro al build) y la sube al repositorio de andes con los archivos extras necesarios

## Posibles mejoras

* copiar todos los archivos a otro volumen, montarlos en kubernetes y luego ejecutarlo en el hook de postStart
