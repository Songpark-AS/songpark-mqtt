FROM eclipse-mosquitto:latest
RUN apk -U upgrade
COPY pre-start-setup.sh /
CMD ["/pre-start-setup.sh"]
