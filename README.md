# docker-compose

Collection of my compose files for Docker

## Stacks

- **[traefik][traefik_readme]** - [Traefik][traefik_website] reverse proxy, load balancer and certificate manager (required for most stacks in this repository)

COMING SOON:

- pihole_doh - [Pi-hole][pihole_website] with DNS over HTTPS (DoH) support via [visibilityspots/cloudflared][visibilityspots_cloudflared_website]
- homer - [Homer][homer_website] dashboard for your services
- portainer - [Portainer][portainer_website] management UI for Docker
- portainer_agent - [Portainer Agent][portainer_agent_website] for remote management of Docker
- homeassistant - [Home Assistant][homeassistant_website] home automation
- Mosquitto - [Mosquitto][mosquitto_website] MQTT broker
-

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[traefik_readme]: ./stacks/traefik/README.md
[pihole_doh_readme]: ./stacks/pihole_doh/
[homer_readme]: ./stacks/homer/README.md
[pihole_website]: https://pi-hole.net/
[visibilityspots_cloudflared_website]: https://hub.docker.com/r/visibilityspots/cloudflared
[traefik_website]: https://traefik.io/
[homer_website]: https://github.com/bastienwirtz/homer
[portainer_website]: https://www.portainer.io/
[portainer_agent_website]: https://hub.docker.com/r/portainer/agent
[homeassistant_website]: https://www.home-assistant.io/
[mosquitto_website]: https://mosquitto.org/
