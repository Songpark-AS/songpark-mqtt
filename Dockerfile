FROM eclipse-mosquitto:latest
RUN apk -U upgrade
WORKDIR /mosquitto
COPY mosquitto.conf config/mosquitto.conf
COPY pre-start-setup.sh /
CMD ["/pre-start-setup.sh"]
