FROM python:latest
LABEL maintainer="PyScada | Martin Schröder"
ENV DEBIAN_FRONTEND noninteractive

ENV LANG C.UTF-8

COPY project_template.zip /src/pyscada/
#COPY pyscada.zip /src/pyscada/
COPY pyscada /src/pyscada/
COPY pyscada_init /src/pyscada/
RUN mkdir /src/pyscada/shared/
RUN mkdir /src/pyscada/shared/plugins/
COPY plugins /src/pyscada/shared/plugins/
RUN mkdir /src/pyscada/shared/log/
RUN touch /src/pyscada/shared/log/pyscada_debug.log
WORKDIR /src/pyscada

RUN pip3 install gunicorn
RUN pip3 install mysqlclient
RUN pip3 install setuptools
#RUN pip3 install /src/pyscada/pyscada.zip
RUN pip3 install https://github.com/pyscada/PyScada/archive/refs/heads/main.zip
RUN for file in `ls -1 /src/pyscada/shared/plugins/*.zip`; do pip3 install $file; done
RUN django-admin startproject PyScadaServer /src/pyscada/ --template /src/pyscada/project_template.zip
RUN chmod +x /src/pyscada/pyscada
RUN chmod +x /src/pyscada/pyscada_init

CMD ["/src/pyscada/pyscada"]
