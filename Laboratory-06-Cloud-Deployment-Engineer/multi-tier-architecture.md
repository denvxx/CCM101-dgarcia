# Multi-Tier Architecture

## What is a Two-Tier Architecture?
A Two-Tier Architecture is a way of building an application by splitting it into two main parts, or tiers. The first tier handles what the user sees and interacts with, and the second tier handles where the data is stored. The two tiers communicate with each other over a network, but each one has its own job.

## The Web/Application Tier
The Web/Application Tier is the part of the system that users interact with directly. Its role is to serve the user interface, handle HTTP requests from the browser, and run the application's main logic. In this laboratory, the Nextcloud container is the Web/Application Tier, since it provides the web page where users log in and manage their files.

## The Database Tier
The Database Tier is the part of the system that stores and manages data. Its role is to keep persistent data, such as user accounts, login credentials, and file information, so that the data is not lost when the application restarts. In this laboratory, the MariaDB container is the Database Tier, since it stores the information that Nextcloud needs to work.

## Why Separate Them?
It is better to keep the web server and the database in two separate containers because each one can be updated, fixed, or restarted without affecting the other. It also makes it easier to scale, since more web containers can be added if many users visit the site, without changing the database. Keeping the database separate also improves security and makes it easier to back up important data.
