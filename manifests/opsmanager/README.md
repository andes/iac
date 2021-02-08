# Instalador de MONGODB OpsManager

Script de instalación del operation manager de MongoDB

## Instalación

`./install.sh '<nombre>' '<apellido>' '<usuario>' '<password>' '<dominio>'`


**Consideraciones:**

- Si el texto contiene caracteres especiales (como $) se debe envolver en comillas simples ''
- La contraseña debe contener letras, números, y símbolos
- El dominio es como se va a acceder al servicio (El dominio seleccionado debe redireccionar a al menos uno de los nodos del cluster). Se puede utilizar `nip.io` para redireccionar a cualquier equipo sin realizar entradas de DNS

**Ejemplo**

`./install.sh 'Juan' 'Perez' 'admin' 'ad123M@$84' 'opsmanager.192.168.68.1.nip.io'`
