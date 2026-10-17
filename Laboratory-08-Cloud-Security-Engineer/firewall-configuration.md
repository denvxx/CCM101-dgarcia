# Firewall Configuration

## Command Used to Allow SSH
```bash
sudo ufw allow ssh
```
This allows incoming connections on port 22 so administrators can still manage the server remotely.

## Commands Used to Set the Default Deny Policy
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```
The first command blocks all incoming traffic by default, and the second allows all outgoing traffic from the server.

## Command Used to Allow Port 8080
```bash
sudo ufw allow 8080/tcp
```
This creates a rule that allows TCP traffic on port 8080, so users can reach the web application.

## What Would Happen if `sudo ufw enable` Ran Before `sudo ufw allow ssh`?
The firewall would start blocking all incoming connections, including SSH on port 22, so the administrator would be locked out of the server and could not manage it remotely.
