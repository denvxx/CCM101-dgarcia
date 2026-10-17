# Reflection

A host-based firewall protects a server even if the physical network perimeter is breached because it works on the server itself. If an attacker gets past the network defenses or gets inside the network, the server still checks every incoming connection and blocks anything that was not allowed. This is the idea of defense in depth, where there are several layers of protection instead of only one.

Managing open network ports is critical because every open port is a possible way into the server. A service that listens on a port can be scanned and attacked, so closing the ports that are not needed makes the attack surface smaller. In this laboratory, only port 22 for SSH and port 8080 for the web application were allowed, and everything else was blocked.

Leaving a database port such as 3306 open to the public internet is dangerous because attackers can find it with automated scans and try to guess passwords or use known weaknesses. The database holds sensitive information such as user accounts and records, so one breach could expose all of it. A database should only be reachable from the application server inside a private network.

This mission changed my view of how easily a server can be compromised. A new server with no firewall is exposed right away, and automated attacks can find it within minutes. It also showed me that security needs careful steps, such as allowing SSH before turning on the firewall, because one mistake can lock out the administrator. At the same time, a few simple rules can reduce the risk a lot.

My GitHub portfolio now looks much more complete with eight missions. It shows steady progress from basic Linux commands to containers, storage, deployment, monitoring, and now security, which gives a good picture of the skills a cloud engineer needs.
