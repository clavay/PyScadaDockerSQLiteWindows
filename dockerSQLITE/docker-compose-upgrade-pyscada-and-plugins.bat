docker container exec pyscada /bin/sh -c "pip3 install https://github.com/pyscada/PyScada/archive/refs/heads/main.zip"
docker container exec pyscada /bin/sh -c "pip3 install https://github.com/pyscada/PyScada-Modbus/archive/refs/heads/main.zip"
docker container exec pyscada /bin/sh -c "pip3 install https://github.com/clavay/PyScada-Operations/archive/refs/heads/main.zip"
docker container exec pyscada /bin/sh -c "pip3 install https://github.com/clavay/PyScada-WebService/archive/refs/heads/main.zip"
docker container exec pyscada /bin/sh -c "python3 /src/pyscada/manage.py migrate; python3 /src/pyscada/manage.py collectstatic --no-input"
docker container restart pyscada nginx
pause