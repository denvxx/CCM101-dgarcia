# Storage Types Research

## Comparison Table

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Stores data in fixed-size blocks, similar to a traditional hard drive. Each block can be accessed and managed separately, and an operating system is needed to organize the blocks into files. | Best used for running databases and operating systems, where fast and consistent read/write speeds are needed. | AWS EBS (Elastic Block Store) |
| File Storage | Stores data as files organized in folders, similar to a shared network drive. Multiple users or applications can access the same files at the same time. | Best used for shared file systems, such as company documents or applications that need to read and write files together. | AWS EFS (Elastic File System) |
| Object Storage | Stores data as individual objects, each with its own unique ID and metadata, instead of organizing them into blocks or folders. It is designed to handle massive amounts of unstructured data. | Best used for storing large amounts of unstructured data, such as images, videos, and backups, especially when that data needs to be accessed over the web. | AWS S3 (Simple Storage Service) |

## Explanation for the Client

Object Storage is the best choice for storing the client's user-uploaded images because it is built to handle massive amounts of unstructured data, such as photos, without needing a complex folder structure. Unlike Block Storage, which is meant for fast, low-level data access inside a single system, Object Storage allows files to be accessed directly over the web using simple links, making it ideal for a photo-sharing application. It also scales easily, so the client will not run into storage limits as more users upload photos.
