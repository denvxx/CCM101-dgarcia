# Reflection

**1. Why is object storage better suited for storing millions of photos compared to a traditional block storage hard drive?**

Object storage handles massive amounts of unstructured data better because each photo is stored as an individual object with its own ID, making it easy to retrieve over the web. Block storage is meant for fast, low-level access inside a single system, like a database, and does not scale as easily for millions of public files.

**2. How did using Docker make it easier to deploy the MinIO storage server?**

Docker removed the need to manually install and configure MinIO. A single command downloaded the image, set the credentials, and started the server with the correct ports already mapped, making deployment fast and repeatable.

**3. What is a "bucket" in the context of cloud storage?**

A bucket is a container used to organize and store objects, similar to a top-level folder. In this activity, a bucket named `client-photos` was created to hold the uploaded sample file, representing how a real application would organize its images.

**4. How do you think large enterprise companies ensure their object storage data is not lost if the physical server crashes?**

Large companies usually keep multiple copies of data across different servers or locations, a practice called replication. Some also use erasure coding, which splits data so it can still be rebuilt even if part of it is lost, protecting against hardware failure.

**5. How is your confidence in navigating the Linux command line growing?**

My confidence is growing steadily with each activity. This one required troubleshooting real errors, like image pull failures and missing configuration settings, which pushed me to read error messages carefully and try different solutions instead of giving up. This hands-on experience has made me more comfortable working directly in the terminal.
