# Traefik

[Traefik][traefik_website] reverse proxy, load balancer and certificate manager.

## Features

This stack provides the following (configurable) features:

- HTTP to HTTPS redirect (Port 80/tcp to 443/tcp)
- Basic authentication for Traefik dashboard
- File provider for static routes via configuration files
- Docker provider for dynamic routes via Docker labels
- Forward IP headers if Traefik is behind a reverse proxy
- Middleware for security headers (HSTS, etc.)
- Letsencrypt certificate resolver with http challenge
- Letsencrypt certificate resolver with dns challenge
- Letsencrypt wildcard certificate (requires dns challenge)

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
  traefik.borntoberoot.net --> server01.borntoberoot.net
  service.borntoberoot.net --> server01.borntoberoot.net
  ```

## Setup

1. Clone or download the repository to your server
2. Copy the folder `stacks/traefik` to `/opt/container/traefik`
3. Create a docker network for Traefik (used by other stacks/containers):

   ```bash
   docker network create --driver=bridge --attachable --internal=false traefik_proxy
   ```

4. Uncomment the feature sections (marked with ##) you want to use in `docker-compose.yml`
5. Adjust the environment variables in `.env` to your needs
6. Start the stack with `docker-compose up -d`

[traefik_website]: https://traefik.io/
