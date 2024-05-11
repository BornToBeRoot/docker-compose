# docker-compose

Collection of my docker compose stacks for various services.

## Stacks

- **[traefik][traefik_readme]** - Traefik reverse proxy, load balancer and certificate manager

  > **NOTE:** Most other stacks require this stack to be running

- **[pihole_doh][pihole_doh_readme]** - Pi-hole with DNS over HTTPS (DoH)
- **[mosquitto][mosquitto_readme]** - Mosquitto MQTT broker
- **[portainer_agent][portainer_agent_readme]** - Portainer Agent for remote management of Docker

COMING SOON:

- homeassistant - Home Assistant home automation
- homer - Homer dashboard for your services
- Nextcloud - Nextcloud self-hosted file sync and share with Collabora Online integration
- portainer - Portainer management UI for Docker
- CUPS - CUPS print server

## Pre-requirments

Using these stacks requires a server with Docker and Docker Compose installed.

```bash
# Ubuntu
apt install docker docker-compose
```

Files are stored in `/opt/container` on the server (but can be changed, depending on your needs).

```bash
# Create directory
mkdir -p /opt/container

# Clone repository
git clone https://github.com/BornToBeRoot/docker-compose /opt/container
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[mosquitto_readme]: ./stacks/mosquitto/
[pihole_doh_readme]: ./stacks/pihole_doh/
[portainer_agent_readme]: ./stacks/portainer_agent/
[traefik_readme]: ./stacks/traefik/
