# MinIO Deployment

## Docker Command Used

Since the official `minio/minio` image was restricted on Docker Hub and Quay.io due to a licensing change in 2025, a community-maintained mirror image (`illuin/bitnami-minio`) was used instead to complete the deployment.

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
-e "MINIO_BROWSER=on" \
-e "MINIO_CONSOLE_PORT_NUMBER=9001" \
illuin/bitnami-minio:2025.7.23-debian-12-r3
```

## Port Used to Access the Web Console
Port **9001** was used to access the MinIO Web Console through the browser, using KillerCoda's Traffic/Ports feature.

## Bucket Created
A bucket named **client-photos** was created to store the client's uploaded images, and a test file was successfully uploaded into it to confirm the setup worked.

## Explanation of the -e Flags (Environment Variables)
- `-e "MINIO_ROOT_USER=cloudadmin"` – Sets the username used to log in to the MinIO server and console.
- `-e "MINIO_ROOT_PASSWORD=CloudNova2026!"` – Sets the password used to log in to the MinIO server and console.
- `-e "MINIO_BROWSER=on"` – Enables the web-based console (browser interface), since this specific image build did not enable it by default.
- `-e "MINIO_CONSOLE_PORT_NUMBER=9001"` – Tells the MinIO server to run the web console on port 9001, matching the port mapped in the Docker command.

Environment variables (`-e` flags) are used to configure a container's behavior at startup without needing to modify the image itself. This makes it easy to set credentials, ports, and settings differently each time the container is run.
