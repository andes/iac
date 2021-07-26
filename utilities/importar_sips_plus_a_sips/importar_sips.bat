@echo off


set PWD=<password de root de mysql>
set DB=sip_v416
set SCRIPTS_PATH=C:\Users\<user>\scriptssips

echo "Colocar al archivo exportado de SIPS en esta carpeta con el nombre 'sip-plus.sql' y luego presionar enter"

pause

if exist sip-plus.sql (
   echo "Archivo encontrado... procediendo con importacion"
) else (
   echo "No existe el archivo sip-plus.sql en la carpeta de este script"
   exit 1
)



"c:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe" -u root -p%PWD% -f  "drop database %DB%"
"c:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe" -u root -p%PWD% -f  "create database %DB%"
"c:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe" -u root -p%PWD% -f -D %DB% < %SCRIPTS_PATH%\create_sips_structure.sql
"c:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe" -u root -p%PWD% -f -D %DB% < sip-plus.sql


pause
