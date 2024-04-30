# From official Debian 12 Bookworm image pinned by its name bookworm-slim
FROM debian:bookworm-slim

# Install noske dependencies
## deb packages
RUN apt-get update && \
    apt-get install -y \
        texlive-full && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workdir
