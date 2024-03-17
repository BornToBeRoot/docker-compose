# Mosquitto

[Mosquitto][mosquitto_website] is an open source MQTT broker.

## Features

Basic mosquitto MQTT broker without authentication for internal use.

## Requirements

- Server with Docker and Docker Compose installed

  ```bash
  # Ubuntu
  apt install docker docker-compose
  ```

- DNS `A` or `CNAME` record(s) pointing to your server

  Example:

  ```plaintext
  # A record
  *.borntoberoot.net --> 192.168.178.10

  # CNAME record
  mqtt.borntoberoot.net --> server01.borntoberoot.net
  mqtt.borntoberoot.net --> server01.borntoberoot.net
  ```

## Setup

1. Clone or download the repository to your server
2. Copy the folder `stacks/mosquitto` to `/opt/container/mosquitto`
3. Adjust the docker-compose file in `/opt/container/mosquitto/docker-compose.yml`
3. Adjust the mosquitto configuration in `/opt/container/mosquitto/data/mosquitto/config/mosquitto.conf`
4. Start the stack with `docker-compose up -d`

[mosquitto_website]: https://mosquitto.org/
