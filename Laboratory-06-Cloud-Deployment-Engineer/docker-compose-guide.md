# Docker Compose Guide

## The Docker Compose File

This is the `docker-compose.yml` file used to deploy Nextcloud and MariaDB together:

```yaml
version: '3'

services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user

  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

## What does the `services:` block do?

The `services:` block lists all the containers that make up the application. Each name under it is one container. In this file there are two services: `database`, which runs MariaDB, and `app`, which runs Nextcloud. Docker Compose reads this list and creates and starts every container for us, so we do not need to run each one by hand.

## How did the Nextcloud app container know how to find the database container?

The Nextcloud container found the database through the `MYSQL_HOST=database` environment variable. The value `database` is the same name as the database service in the file. Docker Compose puts both containers on the same private network, and on that network each service can be reached by its service name. So when Nextcloud connects to `database`, Docker sends the request to the MariaDB container. No IP address is needed.

## What is the difference between `docker run` and `docker-compose up -d`?

| | `docker run` | `docker-compose up -d` |
|---|---|---|
| Number of containers | Starts one container at a time | Starts all containers in the file together |
| Settings | Typed in the command each time | Saved in a `docker-compose.yml` file |
| Repeatable | Easy to make a typing mistake | Same result every time, since the file does not change |
| Networking | Containers must be linked by hand | Containers are connected automatically |
| Best for | Quick tests with a single container | Applications with more than one container |

In Mission 4, `docker run` was used to start one Nginx container. In this mission, `docker-compose up -d` started two connected containers with a single command. The `-d` flag means detached mode, so the containers run in the background.
