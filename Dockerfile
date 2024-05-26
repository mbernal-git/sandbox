# Use the latest official Alpine image as the base image
FROM alpine:latest

# Install necessary packages: vim, python3, openssh
RUN apk update && apk add --no-cache vim python3 openssh ufw

# Set up SSH server
RUN ssh-keygen -A && \
  echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
  echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
  echo "root:alpine" | chpasswd

# Expose SSH port
EXPOSE 22

# Start the SSH service
CMD ["/usr/sbin/sshd", "-D"]
