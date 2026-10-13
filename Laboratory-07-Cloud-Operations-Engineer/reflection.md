# Reflection

Checking the host server's resources is important even when the containers are running perfectly, because every container depends on the same physical server. If the host runs out of memory or disk space, all the containers on it can slow down or crash, even if each one looks healthy on its own. A full disk can also stop logs from being saved, which makes problems harder to find.

If a user cannot log into a web application, the docker logs command would help me see what happened to the login request. The logs show each request and the code the server returned, so I could look for errors such as 401, 403, or 500 and see when they happened. This tells me whether the problem is a wrong password, a blocked page, or a server fault, instead of guessing.

Logs and metrics show different things. Logs are a record of events, such as which pages were requested and which ones failed, like the 404 error in this laboratory. Metrics are numbers measured over time, such as the CPU percentage and memory usage from docker stats. Logs explain what happened, while metrics show how healthy the system is.

Large companies cannot watch thousands of containers by hand, so they use monitoring tools. Prometheus collects metrics from all the containers automatically and stores them, and Grafana turns that data into dashboards and graphs. These tools can also send alerts when CPU, memory, or errors go above a safe level, so the team can react quickly.

My ability to troubleshoot Linux environments has improved because I can now check memory, disk, and CPU from the terminal, read container logs, and watch live metrics. I also learned to look at the evidence first before guessing what is wrong, which is how an operations engineer should work.
