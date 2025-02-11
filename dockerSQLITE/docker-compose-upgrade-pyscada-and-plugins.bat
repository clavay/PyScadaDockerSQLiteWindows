curl -o c:\temp\pyscada_docker\plugins\pyscada.zip https://github.com/pyscada/PyScada/archive/refs/heads/main.zip
curl -o c:\temp\pyscada_docker\plugins\pyscada-modbus.zip https://github.com/pyscada/PyScada-Modbus/archive/refs/heads/main.zip
curl -o c:\temp\pyscada_docker\plugins\pyscada-operations.zip https://github.com/clavay/PyScada-Operations/archive/refs/heads/main.zip
curl -o c:\temp\pyscada_docker\plugins\pyscada-webservice.zip https://github.com/clavay/PyScada-WebService/archive/refs/heads/main.zip
call docker-compose-upgradeZip.bat
