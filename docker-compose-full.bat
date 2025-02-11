#tar -xf dockerSQLITE.zip
cd dockerSQLITE
call docker-compose-load.bat
call docker-compose-up.bat
copy pyscada\PyScada_db C:\Temp\pyscada_docker\sqlite_db
cd ..
pause