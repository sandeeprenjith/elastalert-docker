FROM python:3.9.6-buster
RUN apt update -y
RUN apt install python3-pip -y
RUN pip3 install elastalert2
RUN mkdir /opt/elastalert
RUN mkdir /opt/elastalert/rules
COPY config.yaml.example /opt/elastalert/config.yaml
CMD bash -c 'elastalert-create-index --config /opt/elastalert/config.yaml;elastalert --config /opt/elastalert/config.yaml'

