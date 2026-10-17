# Security Audit Report

## The Principle of Least Privilege (PoLP)
The Principle of Least Privilege means giving a user or account only the permissions it needs to do its job, and nothing more. It is important for cloud user accounts because if an account is hacked or used by mistake, the damage is limited to what that account is allowed to do. For example, a person who only needs to read files should not have permission to delete servers.

## Attack Surface
The attack surface of a virtual machine is the total number of ways that someone can try to get into it. This includes open network ports, running services, installed software, and user accounts. The more things that are open and running, the bigger the attack surface, so a smaller attack surface is safer.

## Default Deny Policy
A Default Deny policy blocks all incoming traffic by default, and only allows the specific traffic that is needed. It is safer than blocking hackers one by one because new attackers and new attack methods appear all the time, and a list of blocked ones can never be complete. With Default Deny, anything that was not allowed on purpose is blocked automatically.
