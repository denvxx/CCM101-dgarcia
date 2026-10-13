# Laboratory 7 - The Cloud Operations Engineer

## Mission Overview
After completing the multi-tier deployment mission, I was promoted to the Cloud Operations Team at CloudNova Technologies. A client was preparing a big marketing campaign and was worried that its cloud servers would run out of memory and crash when many users visit the website. My task was to do a baseline health check: monitor the host server's resources, deploy the client's Nginx web server, send test traffic to it, and collect the application logs and live container metrics to show that the infrastructure is ready.

## Objectives
- Use native Linux command-line tools to monitor host CPU, memory, and disk capacity.
- Deploy a web container and track its real-time performance using Docker metrics.
- Generate web traffic and extract application access logs for analysis.
- Turn raw performance data into a readable technical report using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.

## Monitoring Commands Executed

| Command | Purpose |
|---|---|
| `free -h` | Checked the total and used memory (RAM) of the host server. |
| `df -h` | Checked the disk capacity and available storage. |
| `top` | Viewed the running processes and the CPU load in real time. |
| `docker run -d -p 8080:80 --name client-website nginx` | Started the Nginx web server container in the background on port 8080. |
| `docker ps` | Confirmed that the `client-website` container was running. |
| `curl http://localhost:8080` | Sent a successful HTTP request to the website (run three times). |
| `curl http://localhost:8080/hidden-admin-page` | Sent a request to a page that does not exist to create a 404 error. |
| `docker logs client-website` | Displayed the application logs, including the 200 and 404 requests. |
| `docker logs client-website 2>&1 \| grep 404` | Filtered the logs to show only the 404 line. |
| `docker stats` | Showed live CPU, memory, and network usage of the container. |

## Skills Learned
- Checking the memory, disk, and CPU health of a Linux server using terminal tools.
- Deploying a containerized web server and sending test traffic to it.
- Reading application logs to find specific HTTP status codes such as 200 and 404.
- Using `docker stats` to check that a container uses very little CPU and memory.
- Understanding the difference between logs and metrics in monitoring.
- Writing observability results clearly in Markdown reports.
