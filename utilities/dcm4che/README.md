# Acceso a volumenes de K8s

Manifiesto para poder montar un volumen de un POD para poder realizar algún tipo de mantenimiento sobre el mismo (que no se pueda realizar sobre el pod en funcionamiento)

Ejemplo de uso: restaurar el contenido de una carpeta sin que este la aplicación corriendo (ej: restaurar la carpeta data de postgres)

## Pasos

Editar el archivo volume_mount.yaml en las lineas

```  
    volumes:
    - name: volume-to-mantain
      persistentVolumeClaim:
        claimName: dcm4che-postgres-data
```

Cambiar `dcm4che-postgres-data` por el nombre del volumen que se quiere usar (para ver los volumenes de dcm4che se puede utilizar `kubectl get pv -n dcm4che`)

Aplicar el manifiesto `kubectl apply -f volume_mount.yaml`.

Destruir el POD (para que libere el volumen y pueda ser montado en este nuevo POD). Ej: `kubectl delete pod -n dcm4che dcm4che-postgres-0`

Conectarse remotamente al nuevo POD (busybox1). `kubectl execute -it -n dcm4che busybox1 /bin/sh`

En la carpeta /home se encuentra el volumen montado. Realizar las operaciones necesarias sobre dicha carpeta.

Borrar el POD recientemente creado `kubectl delete -f volume_mount.yaml`

