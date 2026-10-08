# Reflection

Writing a docker-compose.yml file makes a cloud engineer's job easier because the whole setup is saved in one file instead of being typed command by command. With manual commands, it is easy to forget a setting or make a typing mistake, especially when there is more than one container. With a Compose file, one command starts everything the same way every time, and the file can be shared, reviewed, and saved in GitHub.

YAML depends on spaces to show which lines belong together, so an indentation error can break the file. If a Tab is used instead of spaces, Docker Compose cannot read the structure and shows an error message. The containers will not start until the indentation is fixed. This is why the file must be checked carefully after it is pasted into nano.

Environment variables such as MYSQL_PASSWORD were used to pass settings into the containers without changing the images. They set the database name, the user, and the passwords, and they let the Nextcloud container and the MariaDB container use the same credentials to connect. This keeps the configuration in one place and makes it easy to change later.

Deploying a full enterprise cloud storage system in just a few minutes felt impressive. Installing a web application and a database separately on a traditional server would normally take much longer, but Docker Compose did it with a single command. It showed me how much time Infrastructure as Code can save.

My understanding of cloud computing has changed a lot since Mission 1. In Mission 1, I only learned how to use Linux commands and check system information. Now I understand containers, object storage, and multi-container deployments. I also see that cloud engineers work with services and code instead of only managing servers.
