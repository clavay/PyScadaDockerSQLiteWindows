docker container exec pyscada /bin/sh -c "for file in `ls -1 /src/pyscada/shared/plugins/*.zip`; do pip3 install $file; done"
docker container exec pyscada /bin/sh -c "python3 /src/pyscada/manage.py migrate; python3 /src/pyscada/manage.py collectstatic --no-input"
docker container restart pyscada nginx
pause