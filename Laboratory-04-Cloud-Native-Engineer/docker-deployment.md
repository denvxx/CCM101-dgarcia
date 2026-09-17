# Docker Deployment

## Checkpoint 3 - Docker Environment Verification
| Command | Purpose |
|---|---|
| `docker --version` | Checked that Docker is installed and displayed its version. |
| `docker info` | Checked the current status of the Docker environment, including running containers and images. |

## Checkpoint 4 - Deploying the Nginx Container
| Command | Purpose |
|---|---|
| `docker pull nginx` | Downloaded the official Nginx image from Docker Hub. |
| `docker run -d -p 8080:80 --name my-nginx nginx` | Ran the Nginx container in the background and mapped host port 8080 to container port 80. |
| `docker ps` | Verified that the Nginx container was running. |
| `curl http://localhost:8080` | Sent an HTTP request to confirm the web server was working, and received the "Welcome to nginx!" page. |

## Checkpoint 5 - Container Lifecycle
| Command | Purpose |
|---|---|
| `docker ps` | Listed the currently running containers. |
| `docker stop my-nginx` | Stopped the running `my-nginx` container. |
| `docker ps -a` | Verified that the container was stopped by checking its status. |
| `docker rm my-nginx` | Removed the stopped container completely from the system. |
