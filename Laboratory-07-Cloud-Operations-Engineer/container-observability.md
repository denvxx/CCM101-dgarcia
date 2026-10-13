# Container Observability

## Application Logging

The following line was copied from the `docker logs client-website` output. It shows the failed request to a page that does not exist:

```
172.17.0.1 - - [13/Oct/2026:00:31:20 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

Application logs are important for troubleshooting because they record exactly what requests were made and what the server answered, including errors like this 404. Without logs, an engineer would have to guess what went wrong, but with logs they can find the problem quickly.


## Real-Time Container Metrics

The following values were recorded from the `docker stats` output for the `client-website` container at the time of the screenshot:

| Metric | Value |
|---|---|
| Memory Usage | YOUR MEMORY VALUE (for example 3.5MiB) |
| CPU Percentage | YOUR CPU VALUE (for example 0.00%) |

These values show that the Nginx container is using very little CPU and memory, so it is running efficiently and has room to handle more users.
