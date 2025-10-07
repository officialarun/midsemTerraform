FROM nginx:latest

# Create certificate directory
RUN mkdir -p /etc/nginx/certs

# Generate self-signed certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/certs/key.pem \
    -out /etc/nginx/certs/cert.pem \
    -subj "/CN=localhost"

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose HTTP and HTTPS
EXPOSE 80 443

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
