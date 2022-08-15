FROM python:3.10
WORKDIR /usr/src/app
COPY . .
RUN python3 -m pip install -r requirements.txt
RUN apt-get update
RUN apt-get -y install redis-server
RUN nohup redis-server &> redis.log &
EXPOSE 5000
ENV FLASK_APP=app.py
CMD [ "flask", "run", "-h", "0.0.0.0" ]