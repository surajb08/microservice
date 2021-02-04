FROM frolvlad/alpine-python-machinelearning 
#FROM python:alpine

WORKDIR /home/app

ADD requirements.txt .

RUN apk add build pip install -r requirements.txt

Add module_data app.py ./

CMD [ "python", "app.py" ]