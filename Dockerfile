
FROM python:3.7
LABEL maintainer="dgarros@roblox.com"


### -------------------------------------------------
### Install all software and dependencies 
### -------------------------------------------------
ADD requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /source

