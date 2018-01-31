FROM ubuntu
MAINTAINER Dayana <dayanna Aguirre>


RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./var/app
WORKDIR /var/app
COPY ./requirements.txt /var/app
RUN pip install -r requirements.txt
COPY ./servicio.py /var/app

ENTRYPOINT ["python"]
CMD ["servicio.py"]
