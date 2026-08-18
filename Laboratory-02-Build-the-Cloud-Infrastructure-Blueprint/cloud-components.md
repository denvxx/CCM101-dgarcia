# Cloud Infrastructure Components

## Compute Resources
Compute means the CPU and memory (RAM) that a computer uses to run programs and process tasks.

This is important in cloud computing because every app or service needs computing power to work. Cloud providers let you add more computing power when you need it, and reduce it when you don't.

In my KillerCoda environment, the compute resource is the CPU (Intel Xeon E312xx, 1 core) and the RAM (1.9Gi total). I checked this using the `lscpu` and `free -h` commands.

## Storage Resources
Storage is where files and data are saved on a computer.

This matters in cloud computing because data needs to stay saved even if a server restarts or shuts down. Cloud providers offer different types of storage depending on how fast or how safe the data needs to be.

In my KillerCoda server, the storage is shown as disk partitions like `/dev/vda1`, `/dev/vda16`, and `/dev/vda15`. I checked their sizes using the `df -h` command.

## Networking Resources
Networking is how computers connect and talk to each other, using IP addresses and network connections.

This is important in cloud computing because it lets different servers, apps, and users connect to each other over the internet.

In my KillerCoda environment, I found the IP address using the `hostname -I` command. It showed 172.30.1.2 as the internal address and 172.17.0.1 as a Docker network address.

## Operating System
The operating system (OS) is the software that controls the computer and lets other programs run on it.

This matters in cloud computing because the OS decides what software can run, how secure the system is, and how well it uses the CPU, RAM, and storage.

My KillerCoda server runs Ubuntu 24.04.4 LTS. I checked this using the `lsb_release -a` command, and I also checked the kernel version using `uname -r`, which showed 6.8.0-136-generic.
