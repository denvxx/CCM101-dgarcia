# Laboratory 2 - Build the Cloud Infrastructure Blueprint

## Mission Overview
After completing the onboarding mission, I was assigned to my first official project at CloudNova Technologies. This task involved studying the parts of cloud infrastructure and understanding how compute, storage, networking, and identity services work together. I investigated a Linux server using KillerCoda, gathered technical details, compared major cloud providers, and prepared documentation as if it were for a real client.

## Objectives
- Explain the major components of cloud infrastructure.
- Investigate the hardware and software resources available in a Linux environment.
- Differentiate compute, storage, networking, and identity resources.
- Interpret the relationship between cloud infrastructure components.
- Create professional technical documentation using Markdown.
- Continue building a structured GitHub Cloud Computing Portfolio.

## Cloud Infrastructure Components
- **Compute Resources** – The CPU and memory used to run applications. In this activity, this was represented by the server's CPU (Intel Xeon E312xx, 1 core) and RAM (1.9Gi).
- **Storage Resources** – Where data and files are saved. This was represented by the disk partitions (/dev/vda1, /dev/vda16, /dev/vda15).
- **Networking Resources** – How the server connects to other systems. This was represented by the server's IP address (172.30.1.2) and network interfaces.
- **Operating System** – The software that manages the server. This was Ubuntu 24.04.4 LTS running kernel 6.8.0-136-generic.

## Tools Used
- KillerCoda Playground (Ubuntu 24.04 Linux environment)
- GitHub (for version control and documentation)
- Draw.io (for the cloud architecture diagram)
- Official documentation of AWS, Microsoft Azure, and Google Cloud Platform

## Linux Commands Executed
| Command | Purpose |
|---|---|
| `lsb_release -a` | Check the Linux distribution |
| `uname -r` | Check the kernel version |
| `lscpu` | Check CPU model and number of cores |
| `free -h` | Check total memory |
| `df -h` | Check disk space |
| `df -hT` | Check disk space with file system type |
| `mount \| grep "^/dev"` | Check mounted file systems |
| `hostname` | Check the server hostname |
| `hostname -I` | Check the server's IP address |
| `nano` | Create and edit markdown files |
| `cat` | View file contents |

## Skills Learned
- Investigating a Linux server to gather system and network information.
- Understanding the difference between compute, storage, and networking resources.
- Comparing cloud providers and their equivalent services.
- Designing a simple cloud architecture diagram.
- Writing clear and organized technical documentation using Markdown.
- Managing a growing GitHub repository across multiple laboratory activities.

## Challenges Encountered
One challenge was understanding how different cloud providers use different names for similar services, which required careful research to compare them correctly. Another challenge was designing a clear cloud architecture diagram that showed all the required parts without making it too complicated. Taking time to plan the diagram layout before creating it helped solve this problem.
