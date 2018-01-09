FROM python:2.7-onbuild
MAINTAINER Dayana Aguirre

CMD ["python", "./run.py"]
EXPOSE 5000

CMD ["eve.py"]
