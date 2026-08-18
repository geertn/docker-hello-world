FROM busybox:latest
ENV PORT=8000

COPY index.html /www/index.html

HEALTHCHECK CMD nc -z localhost $PORT

CMD ["busybox", "httpd", "-f", "-v", "-p", "8000", "-h", "/www"]
