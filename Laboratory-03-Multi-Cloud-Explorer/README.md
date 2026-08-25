
## Linux Server Investigation

I launched a KillerCoda Ubuntu Playground and used Linux commands to check the server's specifications:
- **Operating System:** Ubuntu 24.04.4 LTS (checked using `lsb_release -a`)
- **CPU Information:** Intel Xeon E312xx (Sandy Bridge, IBRS update), 1 core (checked using `lscpu`)
- **Memory:** 1.9Gi total RAM (checked using `free -h`)
- **Disk Space:** 19G total disk space on the main partition (checked using `df -h`)

### If this Linux server were migrated to the cloud, which AWS, Azure, and GCP services could host it?

Since this server is small and general-purpose, with only 1 CPU core and under 2GB of RAM, it would be a good fit for entry-level virtual machine services on any of the three cloud platforms:

- **AWS:** This server could be hosted on **Amazon EC2**, using a small instance type like `t2.micro` or `t3.micro`, which are designed for low-cost, general-purpose workloads.
- **Azure:** This server could be hosted on **Azure Virtual Machines**, using a small size like `B1s`, which is built for low-traffic applications.
- **Google Cloud Platform:** This server could be hosted on **Compute Engine**, using a small machine type like `e2-micro`, which is meant for lightweight workloads.

All three options would be able to run this server's operating system and handle its current resource usage, since the server does not require high processing power or large amounts of memory.
