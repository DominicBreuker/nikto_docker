# nikto web scanner inside Docker

Nikto is an open source web scanner. It scans web servers for known vulnerabilities.

The homepage is [here](https://cirt.net/Nikto2) and code can be found on GitHub [here](https://github.com/sullo/nikto).

## Usage

Simply tell nikto what web application to analyse. Use the follwing command for SSL support.

```bash
docker run --rm \
           -it \
           dominicbreuker/nikto_docker:latest \
           -host some.site.com -port 443 -ssl
```

Or use this command to test without SSL:

```bash
docker run --rm \
           -it \
           dominicbreuker/nikto_docker:latest \
           -host some.site.com -port 80
```
