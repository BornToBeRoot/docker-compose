# docker-compose

Collection of my docker compose files.

## Stacks

- **[traefik][traefik_readme]** - Traefik reverse proxy, load balancer and certificate manager

  > **NOTE:** Most other stacks require this stack to be running

- **[pihole_doh][pihole_doh_readme]** - Pi-hole with DNS over HTTPS (DoH)

COMING SOON:

- homeassistant - Home Assistant home automation
- homer - Homer dashboard for your services
- Mosquitto - Mosquitto MQTT broker
- Nextcloud - Nextcloud self-hosted file sync and share with Collabora Online integration
- portainer - Portainer management UI for Docker
- portainer_agent - Portainer Agent for remote management of Docker

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[pihole_doh_readme]: ./stacks/pihole_doh/
[traefik_readme]: ./stacks/traefik/
