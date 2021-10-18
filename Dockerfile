FROM eclipse-mosquitto:latest
COPY pre-start-setup.sh /
CMD ["/pre-start-setup.sh"]
