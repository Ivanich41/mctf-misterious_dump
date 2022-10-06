FROM ubuntu:20.04


RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get install -y -q gcc  file
RUN apt-get install -y python3 python3-pip
RUN python3 -m pip install flask
RUN apt-get install -y curl

WORKDIR /app/

COPY ./static_server.py .
COPY ./mysterious_dump.pcap .

EXPOSE 8080

CMD ["flask","--debug" ,"--app=./static_server.py", "run", "--host=0.0.0.0", "--port=8080"]
