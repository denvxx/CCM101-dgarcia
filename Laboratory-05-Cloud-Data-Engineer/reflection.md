# Reflection

Object storage is better suited for storing millions of photos compared to a traditional block storage hard drive because it is designed to handle massive amounts of unstructured data without needing a complex file system to organize it. Each photo is stored as an individual object with its own unique ID, which makes it easy to retrieve files directly over the web. Block storage, in contrast, is meant for fast, low-level access inside a single system, such as running a database, and does not scale as easily for storing huge numbers of public files.

Using Docker made deploying the MinIO storage server much easier, since it removed the need to manually install and configure the software on the operating system. A single command was enough to download the image, set the login credentials, and start the server with the correct ports already mapped, making the entire deployment process fast and repeatable, even after encountering some image access issues along the way.

A bucket, in the context of cloud storage, is a container used to organize and store objects, similar to a top-level folder. In this activity, a bucket named client-photos was created to hold the uploaded sample file, representing how a real application would organize its stored images.

Large enterprise companies usually protect their object storage data by keeping multiple copies across different servers or physical locations, a practice known as replication. Some also use erasure coding, which splits and stores data in a way that allows it to be rebuilt even if part of it is lost, helping ensure that data survives even if a physical server crashes.

My confidence in navigating the Linux command line is growing steadily with each laboratory activity. This activity required troubleshooting real errors, such as image pull failures and missing configuration settings, which pushed me to read error messages carefully and try different solutions instead of giving up. This hands-on problem-solving experience has made me more comfortable working directly in the terminal.
