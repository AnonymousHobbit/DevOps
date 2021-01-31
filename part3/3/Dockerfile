FROM docker:dind
WORKDIR /app
COPY installer.sh /app
RUN apk update && apk add git chmod +x /app/installer.sh
CMD ["/bin/ash", "/app/installer.sh"]
