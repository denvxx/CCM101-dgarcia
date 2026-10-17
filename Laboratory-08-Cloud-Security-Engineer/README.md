# Laboratory 8 - The Cloud Security Engineer

## Mission Overview
After my work on system monitoring, I joined the Cloud Security Team at CloudNova Technologies. A junior developer had deployed a new Ubuntu server for a client's web application but forgot to configure the network security, so the server was exposed to the public internet. My task was to secure it. I deployed an Nginx web application, turned on the UFW firewall with a Default Deny policy, and allowed only the services the client needs: SSH for remote administration and port 8080 for the web application.

## Objectives
- Understand the concept of the Attack Surface and the Principle of Least Privilege (PoLP).
- Perform a basic security audit of active network ports on a Linux server.
- Configure the Uncomplicated Firewall (UFW) with a Default Deny policy.
- Implement granular port management to selectively allow SSH and HTTP traffic.
- Document firewall rules and security best practices using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.

## Commands Executed

| Command | Purpose |
|---|---|
| `docker run -d -p 8080:80 --name secure-web-app nginx` | Started the Nginx web application on port 8080. |
| `docker ps` | Confirmed that the container was running. |
| `curl http://localhost:8080` | Sent a request to check that the web application was reachable. |
| `sudo ufw allow ssh` | Allowed SSH on port 22 so the server can still be managed remotely. |
| `sudo ufw default deny incoming` | Blocked all incoming traffic by default. |
| `sudo ufw default allow outgoing` | Allowed all outgoing traffic. |
| `sudo ufw enable` | Activated the firewall. |
| `sudo ufw status verbose` | Showed the firewall status and the default policies. |
| `sudo ufw allow 8080/tcp` | Allowed TCP traffic on port 8080 for the web application. |
| `sudo ufw status numbered` | Listed the firewall rules with numbers to confirm the new rule. |

## Skills Learned
- Explaining the Principle of Least Privilege, the attack surface, and the Default Deny policy.
- Enabling and configuring the UFW firewall on a Linux server.
- Setting a Default Deny policy for incoming traffic.
- Allowing only specific services, such as SSH and port 8080, through the firewall.
- Allowing SSH before enabling the firewall, to avoid locking out the administrator.
- Documenting firewall rules clearly using Markdown.
