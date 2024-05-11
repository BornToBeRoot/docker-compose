# Mosquitto

[Mosquitto][mosquitto_website] is an open source MQTT broker.

## Features

- Mosquitto MQTT broker without authentication
  - e.g. for internal use with [Home Assistant](../homeassistant)

## Setup

1. DNS `A` or `CNAME` record pointing to your server for the MQTT service

   Example:

   ```plaintext
   # A record
   mqtt.borntoberoot.net --> 192.168.178.10

   # CNAME record
   mqtt.borntoberoot.net --> server01.borntoberoot.net
   ```

2. Adjust the configuration based on your needs in the following files:

   - `/opt/container/stacks/mosquitto/docker-compose.yml`
   - `/opt/container/stacks/mosquitto/data/mosquitto/config/mosquitto.conf`

3. Start the stack with `docker-compose up -d`

[mosquitto_website]: https://mosquitto.org/
