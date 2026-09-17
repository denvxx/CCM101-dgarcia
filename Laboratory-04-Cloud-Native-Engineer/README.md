# Laboratory 4 - The Cloud-Native Engineer

## Mission Overview
After successfully guiding clients through multi-cloud evaluations, I was promoted to the Cloud-Native Engineering Team at CloudNova Technologies. A client complained that their traditional Virtual Machines take too long to boot up and use too much RAM. My task was to explain the difference between VMs and containers, then use the KillerCoda terminal to deploy a containerized Nginx web server, documenting every command so the client's IT team could replicate the process.

## Objectives
- Differentiate between traditional Virtual Machines (VMs) and Containers.
- Access a Docker-enabled cloud environment using KillerCoda.
- Execute fundamental Docker CLI (Command Line Interface) commands.
- Pull, run, manage, and terminate a containerized application (Nginx).
- Create professional technical documentation of container operations using Markdown.
- Continue developing a well-organized GitHub Cloud Computing Portfolio.

## Docker Commands Executed

**Checkpoint 3 - Verifying Docker**
| Command | Purpose |
|---|---|
| `docker --version` | Checked that Docker is installed and displayed its version. |
| `docker info` | Checked the current status of the Docker environment. |

**Checkpoint 4 - Deploying the Nginx Container**
| Command | Purpose |
|---|---|
| `docker pull nginx` | Downloaded the official Nginx image from Docker Hub. |
| `docker run -d -p 8080:80 --name my-nginx nginx` | Ran the Nginx container in the background and mapped host port 8080 to container port 80. |
| `docker ps` | Verified that the Nginx container was running. |
| `curl http://localhost:8080` | Confirmed the web server was working by viewing the "Welcome to nginx!" page. |

**Checkpoint 5 - Container Lifecycle**
| Command | Purpose |
|---|---|
| `docker ps` | Listed the currently running containers. |
| `docker stop my-nginx` | Stopped the running container. |
| `docker ps -a` | Verified that the container was stopped. |
| `docker rm my-nginx` | Removed the container completely. |

## Skills Learned
- Understanding the architectural differences between Virtual Machines and Containers.
- Verifying that Docker is installed and running properly in a Linux environment.
- Pulling container images from Docker Hub.
- Running a container in detached mode and mapping network ports.
- Managing the full lifecycle of a container, from running to stopping to removing it.
- Documenting technical procedures clearly using Markdown, so they can be followed by others.

## Challenges Encountered
One challenge was understanding how port mapping works, since it was not immediately clear why the host port and container port needed to be specified separately. Researching how Docker networking works helped clarify that the container operates in its own isolated environment, and port mapping is what allows outside traffic to reach it. Another challenge was remembering the correct order of lifecycle commands, since a running container must be stopped before it can be removed.
