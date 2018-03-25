FROM odoo:10.0
USER root
RUN mkdir app
COPY addons/requirements.txt /app
WORKDIR /app
RUN apt-get -y update
RUN pip install -U setuptools
RUN apt-get install -y build-essential libssl-dev libffi-dev python-dev
RUN pip install -r requirements.txt
