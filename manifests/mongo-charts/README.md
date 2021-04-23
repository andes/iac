# MongoCharts

Despliegue de mongo charts dentro de kubernetes

## Instalación

- Clonar este repositorio
- Crear la carpeta certs con los certificados autofirmados de la instalación (`privkey.pem`, y `fullchain.pem`)
- Crear la cerpeta config con los archivos `stitch-config.json` y `stitch-config.template.json` de la instalación anterior
- Crear la carpeta keys con los archivos `charts-token.json` `last.app.json`, `mongodb-charts.key` (sin espacios ni \n al final), y `stitch-migrations.json`
- Ejecutar el instalador `./install.sh 'namespaceX' 'dominio.nn.cc' keys certs config 'mongo://url de conexion' `

El instalador creara el namespace namespaceX y creará un ingress a domino.nn.cc tomando los archivos de las carpetas especificadas y como parámetro de conexion a mongodb la url de conexion.

**Importante:** se detecto que por la forma de trabajo que tiene la herrmienta, no funciona bien si se indica un puerto en el dominio (ya que lo vuelve a agregar y no permite el login). Se recomienda usar la aplicación siempre detras de un reverse que escuche en los puertos tradicionales 80 y 443, y redireccione al ingress de kubernetes (puerto 30443)

## Comportamiento interno de Mongo Charts

### Forma de trabajo de MongoCharts

La aplicación cuenta con un servidor NodeJS escuchando en el puerto 8080 y un NGINX que hace de reverse.

NGINX recibe el tráfico externo:

- Si el tráfico es al puerto 80 (HTTP), lo redirige al puerto 443 (HTTPS)
- Si el tráfico es al puerto 443 (HTTPS), hace un reverse al puerto 8080 (a la aplicación NodeJS)

### Inicialización de la App

La carpeta en la cual corre la aplicación en el contenedor es `/mongo-charts`. Existen 3 carpetas principales:

- `/mongo-charts/config` la que contiene la configuración de la aplicación que esta corriendo. Esta configuración es generada al momento de inicializarse el contenedor en base a la carpeta `/mongo-charts/volumes/keys`.
- `/mongo-charts/volumes/keys` la que contiene los datos persistentes de la aplicación y sobre los cuales se genera la configuración. El archivo `last.app.json` es un archivo que debe poder ser de lectura/escritura. Por lo que al momento de crear el contenedor por primera vez, se debe utilizar un archivo de otra instalación (ej: se tomo el que se usaba en d-testing para correr el contenedor)
- `/mongo-charts/volumes/web-certs` son los certificados que utiliza el NGINX para correr la aplicación. En este momento son autofirmados.
