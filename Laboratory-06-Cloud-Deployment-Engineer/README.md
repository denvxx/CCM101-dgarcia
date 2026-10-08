# Laboratory 6 - The Cloud Deployment Engineer

## Mission Overview
After finishing the data storage mission, I joined the Cloud Deployment Team at CloudNova Technologies. A university client wanted to stop paying for Google Drive and host its own private cloud storage system. My task was to deploy a proof-of-concept Nextcloud environment. Since Nextcloud needs a database, I built a two-tier setup with a MariaDB database container and a Nextcloud web container, linked together using Docker Compose.

## Objectives
- Explain the concept of a multi-tier application architecture.
- Understand the purpose and structure of a docker-compose.yml file.
- Use a Linux command-line text editor (nano) to create configuration files.
- Deploy a multi-container application (Nextcloud + Database) using Docker Compose.
- Document deployment procedures and Infrastructure as Code (IaC) principles using Markdown.
- Continue expanding my professional GitHub Cloud Computing Portfolio.

## Commands Executed

| Command | Purpose |
|---|---|
| `mkdir nextcloud-deployment` | Created a new folder for the project. |
| `cd nextcloud-deployment` | Moved inside the project folder. |
| `nano docker-compose.yml` | Opened the nano editor to write the Compose file. |
| `cat docker-compose.yml` | Displayed the file to check that the indentation was correct. |
| `docker-compose up -d` | Pulled the images and started the database and app containers in the background. |
| `docker-compose ps` | Checked that both containers were running. |
| `docker-compose down` | Stopped and removed the containers and the network. |

Note: newer versions of Docker use `docker compose` (with a space) instead of `docker-compose`. Both do the same thing.

## Skills Learned
- Explaining the roles of the web tier and the database tier in a two-tier architecture.
- Writing a properly indented YAML configuration file using the nano text editor.
- Deploying a multi-container application with one Docker Compose command.
- Understanding how containers find each other by service name on a shared network.
- Accessing an application running inside a container stack through a web browser.
- Shutting down a full stack cleanly with `docker-compose down`.
- Understanding the basic idea of Infrastructure as Code, where the setup is written in a file instead of typed by hand.
