#Setup the python version 3.7
FROM python:3.7

#Installing all necessary things
RUN apt-get update && apt-get install curl -y
RUN apt-get install -y wget

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install nodejs -y

RUN apt-get install nmap -y

RUN apt-get install nginx -y

CMD ["/bin/bash"]

