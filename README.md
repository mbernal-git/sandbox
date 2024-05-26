# Sandbox

This container utilizes the alpine:latest image. The purpose of this sandbox is to easily spin up a Linux environment with minimal resources, while providing additional utilities and enabling SSH for remote access.

## Utilities

The following utilities are included in this container:

1. Python3
2. Pip
3. VIM
4. OpenSSH
5. Curl
6. Firewall
7. Git

## Package Manager

apk (Alpine Package Keeper) is the package manager for Alpine Linux.
Here are some of the apk commands.

Updating the Package List

`apk update`

Installing a Package

`apk add curl`

Upgrading Installed Packages

`apk upgrade`

Removing a Package

`apk del curl`

Searching for a Package

`apk search curl`

Showing package info

`apk info curl`

Listing Installed Packages

`apk list --installed`

## Pull, Build, Run, and Connect with Mount Binding

To pull the image from DockerHub (if not available locally), build the image, run the container, and start the SSH server in detached mode, use the following command. This command also binds a host directory to a directory inside the container.

`docker run -d -p 2222:22 --name alpine-sandbox -it --mount type=bind,source="/c/Users/mbern/Sandbox/test",target=/home/mike mbernalsandbox/alpine-sandbox:v1`

Note: Adjust the source directory path to match your own directory structure.

## Connecting to the Running Container

### Via Terminal

To open an interactive terminal session inside the running container, use the following command:

`docker exec -it alpine-sandbox /bin/sh`

### Via SSH

`ssh root@<docker-host-ip> -p 2222`

Replace <docker-host-ip> with the IP address of your Docker host. You can find this address using ipconfig on Windows or ifconfig on Linux.

The default SSH password is alpine.
