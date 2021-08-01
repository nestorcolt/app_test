# Use the Nginx image
FROM nginx

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own nginx.conf
COPY nginx.conf /etc/nginx/conf.d/

# Install mkcert to validate ssl configuration 
RUN apt update && \
    apt install -y curl libnss3-tools && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -Lo /usr/local/bin/mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64 && \
    chmod +x /usr/local/bin/mkcert

RUN mkcert -install 
RUN mkcert --key-file etc/nginx/ssl.key --cert-file etc/nginx/ssl.crt localhost 127.0.0.1