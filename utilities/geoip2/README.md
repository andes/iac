# Script para usar con cron para actualizar geoip

- Descargar el script en el server verificando que tenga permisos de ejecucion
- Modificar el parametro DEST_FOLDER indicando la carpeta en la cual se deben dejar las DBs de country y city
- Agregar el script al cron del server. Ejemplo (para todos los lunes a las 6)
`* 6 * * 1 /path-al-script/cron-download-geoip-lite-2.sh >/dev/null 2>&1`
