# docker-compose

Collection of my compose files for Docker

## Stacks

- **[traefik][traefik_readme]** - [Traefik][traefik_website] reverse proxy, load balancer and certificate manager (required for most stacks in this repository)

COMING SOON:

- homeassistant - [Home Assistant][homeassistant_website] home automation
- homer - [Homer][homer_website] dashboard for your services
- Mosquitto - [Mosquitto][mosquitto_website] MQTT broker
- Nextcloud - [Nextcloud][nextcloud_website] self-hosted file sync and share with [Collabora Online](https://www.collaboraoffice.com/collabora-online/) integration
- pihole_doh - [Pi-hole][pihole_website] with DNS over HTTPS (DoH) support via [visibilityspots/cloudflared][visibilityspots_cloudflared_website]
- portainer - [Portainer][portainer_website] management UI for Docker
- portainer_agent - [Portainer Agent][portainer_agent_website] for remote management of Docker

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[homeassistant_website]: https://www.home-assistant.io/
[homer_readme]: ./stacks/homer/README.md
[homer_website]: https://github.com/bastienwirtz/homer
[mosquitto_website]: https://mosquitto.org/
[nextcloud_website]: https://nextcloud.com/
[pihole_doh_readme]: ./stacks/pihole_doh/
[pihole_website]: https://pi-hole.net/
[portainer_agent_website]: https://hub.docker.com/r/portainer/agent
[portainer_website]: https://www.portainer.io/
[traefik_readme]: ./stacks/traefik/README.md
[traefik_website]: https://traefik.io/
[visibilityspots_cloudflared_website]: https://hub.docker.com/r/visibilityspots/cloudflared