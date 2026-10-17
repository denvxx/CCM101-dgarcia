# Reflection

Automation is critical when managing hundreds of cloud servers because doing the same task by hand on every machine is too slow and easy to get wrong. A script does the task the same way every time, and it can run on many servers at once. It also removes the human error that caused the data loss in this laboratory, since a backup no longer depends on someone remembering to do it.

However, automation can also be dangerous. A script repeats exactly what it is told, so a destructive typo, such as a wrong path in a delete command, would run on every server it is scheduled for. If it were scheduled on 1,000 servers, it could erase important data on all of them before anyone notices. This is why scripts should be tested on one machine first and reviewed carefully before they are scheduled.

Writing a Bash script was different from creating a Docker Compose YAML file. The YAML file describes the setup that should exist, such as which containers to run, and Docker Compose decides how to build it. The Bash script lists the steps to run in order, using commands, variables, and the shebang line, so I had to control how things happen myself.

Looking back at all nine laboratories, my understanding of cloud computing has changed a lot. In Laboratory 1, I only used basic Linux commands and a GitHub repository. Since then, I compared cloud providers, ran containers, stored data in object storage, deployed multi-container applications, monitored them, secured them with a firewall, and now automated backups. I now see the cloud as services that are built, protected, and maintained together, not just rented servers.

The role I enjoyed the most was the Cloud-Native Engineer, because deploying a working web server with a single Docker command felt fast and rewarding. It showed me how much a small tool can do, and it made the later laboratories on storage, deployment, and security easier to follow.
