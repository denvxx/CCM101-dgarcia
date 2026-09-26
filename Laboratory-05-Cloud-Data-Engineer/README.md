# Laboratory 5 - The Cloud Data Engineer

## Mission Overview
After successfully deploying containerized web servers, I was temporarily reassigned to the Cloud Data Engineering Team at CloudNova Technologies. A client building a photo-sharing application needed a place to store millions of user-uploaded images, but could not store them inside the web server container since containers are temporary. My task was to set up a proof-of-concept Object Storage environment using MinIO, create a secure bucket named `client-photos`, and upload a test file to prove that the system works.

## Objectives
- Differentiate between Block, File, and Object Storage.
- Deploy an S3-compatible Object Storage server (MinIO) using Docker.
- Access a cloud service via a web interface using port forwarding.
- Create a storage bucket and upload objects (files) to the cloud.
- Document cloud storage operations using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.

## Tools Used
- KillerCoda Playground (Ubuntu with Docker pre-installed)
- Docker (to deploy the MinIO container)
- MinIO Object Storage (S3-compatible storage server)
- GitHub (for version control and documentation)

## Skills Learned
- Understanding the differences between Block, File, and Object Storage, and knowing which type fits which use case.
- Deploying a more complex containerized service using multiple environment variables.
- Troubleshooting Docker image pull issues caused by registry access restrictions, and finding a working alternative image.
- Accessing a cloud service running inside a container through a web browser using port forwarding.
- Creating a storage bucket and uploading files through a web-based cloud storage console.
- Documenting a full deployment process clearly, including the exact commands and configuration used.
