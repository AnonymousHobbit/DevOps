FROM ubuntu:18.04

COPY curler.sh .
RUN apt-get update && apt-get install curl -y
CMD ["./curler.sh"]

