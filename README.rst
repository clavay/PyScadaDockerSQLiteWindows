Preconfigured PyScada using Docker and SQLite on Windows
========================================================

Installation
------------

0. `Docker Desktop <https://docs.docker.com/desktop/setup/install/windows-install/>`_ must be installed.

1. Launch Docker Desktop and wait for it to start up completely.

2. Download the `PyScadaDockerSQLiteWindows-main.zip <https://github.com/clavay/PyScadaDockerSQLiteWindows/archive/refs/heads/main.zip>`_ file.

3. Extract the file and enter the PyScadaDockerSQLiteWindows-main directory.

4. Run

   ::

      docker-compose-full.bat

   and wait until the end.

5. Open the page http://127.0.0.1:8090

6. Connect using :

   ::

      user : pyscada
      password : pyscada

Upgrade or install plugins
--------------------------

1. Copy the zip you want to install or upgrade in :

   ::

      c:\temp\pyscada_docker\plugins

2. Run

   ::

      docker-compose-upgradeZip.bat

Save or restore the database
----------------------------

1. Stop the `pyscada` container in Docker Desktop

2. Copy or restore the file :

   ::

      c:\temp\pyscada_docker\sqlite_db\PyScada_db

3. Start the `pyscada` container in Docker Desktop
