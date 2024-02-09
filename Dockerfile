# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Install Hugo
RUN apt update && \
    apt install -y hugo

# Set the working directory
WORKDIR /site

# Copy the entry point script
COPY entrypoint.sh /entrypoint.sh

# Give execution permission to the script
RUN chmod +x /entrypoint.sh

# Set the entry point script as the entry point of the container
ENTRYPOINT ["/entrypoint.sh"]

