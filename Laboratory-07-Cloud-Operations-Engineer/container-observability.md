# Container Observability

## Application Logging

The following line was copied from the `docker logs client-website` output. It shows the failed request to a page that does not exist:

```
172.17.0.1 - - [13/Oct/2026:00:31:20 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

Application logs are important for troubleshooting because they record exactly what requests were made and what the server answered, including errors like this 404. Without logs, an engineer would have to guess what went wrong, but with logs they can find the problem quickly.
