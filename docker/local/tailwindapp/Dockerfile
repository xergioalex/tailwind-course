FROM node:20.12.0-bullseye
LABEL maintainer="xergioalex@gmail.com"

RUN apt-get update -y && \
    apt-get install less git -y && \
    # --- Clean ---
    apt-get clean -y && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/lib/apt/lists/*