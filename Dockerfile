FROM eclipse-mosquitto:latest
RUN apk -U upgrade
RUN apk cache clean
COPY pre-start-setup.sh /
CMD ["/pre-start-setup.sh"]
