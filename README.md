# kyleondy/rsync

Havily inspired by [atmoz's sftp](https://github.com/atmoz/sftp) image.

## Docker Compose

```bash
version: "2"
services:
  rsync:
    image: kyleondy/rsync
    ports:
      - "[EXPOSED_PORT]:22"
    volumes:
      - [LOCATION_OF_AUTH_KEYS]:/root/.ssh/authorized_keys
      - [LOCAL_DATA_DIR]:/data
    networks:
      - proxy

networks:
  proxy:
    external:
      name: proxy_default
```
