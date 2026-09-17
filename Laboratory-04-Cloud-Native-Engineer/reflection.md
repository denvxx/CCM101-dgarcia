# Reflection

**1. How does the boot time and setup process of a Docker container compare to installing an operating system on a Virtual Machine?**

The boot time and setup process of a Docker container is much faster than installing an operating system on a Virtual Machine. A traditional VM needs to boot a full operating system, which can take several minutes, while a Docker container only needs to start a lightweight process that shares the host system's operating system. In this activity, deploying an Nginx web server using Docker took only seconds, compared to the minutes it would normally take to install and configure a web server on a VM.

**2. Why is port mapping (-p 8080:80) necessary when running a web server inside a container?**

Port mapping is necessary when running a web server inside a container because the container operates in its own isolated network space, separate from the host machine. Using `-p 8080:80` connects port 8080 on the host machine to port 80 inside the container, which is the default port Nginx uses. Without this mapping, there would be no way for outside requests, like the `curl` command, to reach the web server running inside the container.

**3. What happens to the data inside a container when you use the docker rm command?**

When the `docker rm` command is used, all the data inside the container is permanently deleted, since containers are meant to be temporary and disposable. Unless the data was saved outside the container using a volume, removing the container also removes anything created or changed while it was running.

**4. How do you think containerization changes the way software developers and IT operations teams work together (DevOps)?**

Containerization changes the way developers and IT operations teams work together by making applications easier to build, test, and deploy consistently across different environments. Since containers package an application with everything it needs to run, developers can be confident that it will behave the same way on any system, which reduces conflicts between development and operations teams. This supports the DevOps approach, where both teams work closely together using shared, reliable tools.

**5. How is your GitHub portfolio evolving?**

My GitHub portfolio is evolving from basic Linux and cloud research into more hands-on technical work. This activity shows that I can not only research cloud concepts but also perform real container operations, which is a valuable skill for a future cloud-native engineer.
