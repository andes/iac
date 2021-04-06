# Prueba de backup

## Creación de deployment

Primero se debe desplegar la aplicación de prueba en kubernetes para poder, luego, probar la función de backup/restore de Kasten

En el cluster sobre el cual se desea realizar el despliegue de la aplicación de prueba...

```
kubectl apply -f 01-pvc.yml
kubectl apply -f 02-deployment-pruebapvc.yml
```

Esperar que la aplicación se termine de desplegar (demora unos 3 minutos apróximadamente). Se puede seguir el estado del despliegue por medio de 

```
kubectl get pods -l app=test-pvc
```

## Descripción de la aplicación desplegada

La aplicación es solamente un busybox (una imagen pequeña con funcionalidad mínima) que tiene montado en `/home` un volumen persistente (que se lo solicita al storageClass `csi-sc`, se puede modificar `01-pvc.yml` para solicitarlo a otro storageClass)

El único directorio *persistente* es `/home` 

## Prueba

- Ingresar al deployment `kubectl exec -it <nombre del deployment> /bin/sh` (luego salir)
- Crear un archivo dentro de `/home` con algún contenido
- Ingresar a Kasten (ya debe estar configurado)
  - Ir a `Policies`
  - Crear una nueva Policy
  - En *Enable Backups vis Snapshot Exports* seleccionar si (en caso que se quiera exportar el backup al S3/Minio configurado) seleccionando si todos los snapshots, y el profile (de S3) previamente configurado
  - En *Select Applications* seleccionar *By Labels* y como label `app: test-pvc`
  - Guardar la Policy
- Correr una vez la Policy para crear un snapshot del deployment
- Volver a ingrear al deployment `kubectl exec -it <nombre del deployment> /bin/sh` y modificar el archivo anterior/crear un nuevo archivo
- Volver a Kasten y restaurar el backup creado
- Cuando finaliza la operación, volver a ingresar al deployment y verificar que se debe encontrar la versión previa a la última modificación (se tuvo que haber deshecho el último cambio)
