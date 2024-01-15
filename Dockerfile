FROM debian:stable-slim

COPY entrypoint.sh ./

RUN chmod +x entrypoint.sh && \
    apt-get update && \
    apt-get install --no-install-recommends -y cloud-init && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]
