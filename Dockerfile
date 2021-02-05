# FROM frolvlad/alpine-python-machinelearning 
#FROM python:alpine
FROM smizy/scikit-learn:0.20.3-alpine

#WORKDIR /home/app

# ADD requirements.txt .

# RUN pip install -r requirements.txt

RUN pip install flask 

Add model_data app.py ./

EXPOSE 8000

CMD [ "python", "app.py" ]