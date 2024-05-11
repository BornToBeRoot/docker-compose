# Pi-hole with DNS over HTTPS

[Pi-hole][pihole_website] with DNS over HTTPS (DoH) via [cloudflared][cloudflared_website].

## Features

- Pi-hole DNS server and ad blocker
- DNS over HTTPS (DoH) via [cloudflared][cloudflared_website]
- Web interface behind Traefik reverse proxy (to enable HTTPS)

## Pre-requirments

If port `53/udp` is used on the host system, you need to stop and disable the systemd-resolved service:

```bash
nano /etc/systemd/resolved.conf
```

Set the `DNSStubListener` to `no`:

```plaintext
DNSStubListener=no
```

Create a symlink and restart the systemd-resolved service afterwards:


```bash
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

systemctl restart systemd-resolved
```

## Setup

1. DNS `A` or `CNAME` record pointing to your server for the Pi-hole web interface

   Example:

   ```plaintext
   # A record
   dns.borntoberoot.net --> 192.168.178.10

   # CNAME record
   dns.borntoberoot.net --> server01.borntoberoot.net
   ```

2. Adjust the configuration based on your needs in the following files:

   - `/opt/container/stacks/pihole_doh/docker-compose.yml`
   - `/opt/container/stacks/pihole_doh/.env`

3. Start the stack with `docker-compose up -d`

[cloudflared_website]: https://hub.docker.com/r/visibilityspots/cloudflared
[pihole_website]: https://pi-hole.net/
