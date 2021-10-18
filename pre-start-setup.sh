#!/bin/sh
touch /mosquitto/config/passwordfile
mosquitto_passwd -b /mosquitto/config/passwordfile $MQTT_USERNAME $MQTT_PASSWORD
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
