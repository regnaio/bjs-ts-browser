# ====================================================================== base ======================================================================
FROM node:18.19.1-bullseye-slim as root

RUN echo 'root:root' | chpasswd

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl net-tools

RUN npm i --location=global npm@latest
RUN npm i --location=global npm-check-updates

# --------------------------------------------------------------------------------------------------------------------------------------------------

FROM root as nonroot

RUN userdel -r node
RUN groupadd --gid 1000 nonroot && useradd --uid 1000 --gid nonroot --shell /bin/bash --create-home nonroot

USER nonroot
WORKDIR /home/nonroot/app

# ====================================================================== dev =======================================================================

FROM nonroot as nonroot-dev

EXPOSE 9000
