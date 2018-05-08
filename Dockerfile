FROM odoo:11.0
USER root
RUN mkdir app
COPY addons/requirements.txt /app
WORKDIR /app
RUN apt-get -y update
RUN pip3 install -U setuptools
RUN apt-get install -y build-essential libssl-dev libffi-dev python3-dev
RUN pip3 install -r requirements.txt
