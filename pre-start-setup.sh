#!/bin/sh
# TODO: create passwordfile with mosquitto_passwd here and put it in /mosquitto/config/passwordfile
touch /mosquitto/config/passwordfile
mosquitto_passwd -b /mosquitto/config/passwordfile songpark $MQTT_PASSWORD
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf

