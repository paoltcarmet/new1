FROM teddysun/v2ray:latest

# Cloud Run default is 8080
EXPOSE 8080

# Copy config
COPY config.json /etc/v2ray/config.json

# Run V2Ray (v5 syntax; -c is safe)
CMD ["v2ray", "run", "-c", "/etc/v2ray/config.json"]