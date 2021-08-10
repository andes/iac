# SysPass

## Forma de trabajo de la app

La aplicación esta compuesta por 2 servicios (base de datos MariaDB y aplicación SysPass). 

### Base de datos MySQL

La base de datos contiene la información de la aplicación en la tabla syspass, y además debe tener un usuario para que se conecte syspass para realizar las consultas. Este usuario es generado por la aplicación al momento de instalación y tiene un nombre random. 

### SysPass

La aplicación genera un salt al momento de instalación que es usado para encriptar/desencriptar las contraseñas de la base de datos. Además cuenta con la información de acceso a la base de datos en un archivo XML. El archivo se encuentra en la carpeta /var/www/html/sysPass/app/config (junto con dos archivos de claves / pública y privada)

## Kubernetes

La aplicación cuenta con un script de instalación `install.sh` el cual solicita los datos necesarios para poder realizar la instalación de la base de datos y aplicación.

### Pasos

Los pasos que se siguen para desplegar MariaDB y la aplicación son.

#### MariaDB

- Se le indica al instalador cual es el archivo que contiene el dump anterior de la base de datos (debe contener el usuario también)
- El instalador lee ese archivo y crea el secret `syspass-mysql-dump`
- El instalador crea el secret `syspass-mysql-root-password` con la contraseña de root proporcionada al instalador
- El StatefulSet de la aplicación, monta el secret en la carpeta `/docker.entrypont-initdb.d/inicializacion.sql` para que al momento de iniciar por primera vez la aplicación se ejecute dicho SQL
- El StatefulSet contiene además un PVC para guardar el contenido persistente de la aplicación (bases de datos)

#### SysPass

- Se le indica al instalador cual es el directorio que tiene los archivos de la carpeta config (`config.xml`, `key.pem`, `pubkey.pem`)
- El instalador lee esos archivos y crea el secret `syspass-config`
- El deployment cuenta con un initContainer que copia esos archivos (en caso de no existir) en el PVC asociado a la configuración
- El deployment monta el PVC en la carpeta `/var/www/html/sysPass/app/config` 
