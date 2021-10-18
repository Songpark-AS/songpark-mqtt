#!/bin/sh
touch /mosquitto/config/passwordfile
mosquitto_passwd -b /mosquitto/config/passwordfile songpark $MQTT_PASSWORD
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
