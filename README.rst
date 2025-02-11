Preconfigured PyScada using Docker and SQLite on Windows
========================================================

Installation
------------

1. Download the `PyScadaDockerSQLiteWindows-main.zip <https://github.com/clavay/PyScadaDockerSQLiteWindows/archive/refs/heads/main.zip>`_ file.

2. Launch Docker Desktop and wait for it to start up completely.

3. Run

   ::

      docker-compose-full.bat

   and wait until the end.

4. Open the page http://127.0.0.1:8090

5. Connect using :

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
