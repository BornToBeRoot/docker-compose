# Traefik

[Traefik][traefik_website] reverse proxy, load balancer and certificate manager.

## Features

- HTTP to HTTPS redirect (Port 80/tcp to 443/tcp)
- Basic authentication for Traefik dashboard
- File provider for static routes via configuration files
- Docker provider for dynamic routes via Docker labels
- Forward IP headers if Traefik is behind a reverse proxy
- Middleware for security headers (HSTS, etc.)
- Letsencrypt certificate resolver with http challenge
- Letsencrypt certificate resolver with dns challenge
- Letsencrypt wildcard certificate (requires dns challenge)

## Setup

1. DNS `A` or `CNAME` record pointing to your server for the traefik web interface

   Example:

   ```plaintext
   # A record
   treafik.borntoberoot.net --> 192.168.178.10

   # CNAME record
   traefik.borntoberoot.net --> server01.borntoberoot.net
   ```

2. Create a docker network for Traefik (used by other stacks/containers):

   ```bash
   docker network create --driver=bridge --attachable --internal=false traefik_proxy
   ```

3. Adjust the configuration based on your needs in the following files:

   - `/opt/container/stacks/traefik/docker-compose.yml`
   - `/opt/container/stacks/traefik/.env`

4. Start the stack with `docker compose up -d`

[traefik_website]: https://traefik.io/
