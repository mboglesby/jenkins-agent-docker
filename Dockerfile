# Use the official Jenkins agent image as a base
FROM jenkins/jnlp-slave

# Use DOCKER_GID value of 113 if not passed in by user
ARG DOCKER_GID=113

# Set maintainer email address
LABEL maintainer="mboglesby@gmail.com"

# Install Docker
USER root
RUN mkdir -p /tmp/docker-install
RUN curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.09.5.tgz | tar -xz -C /tmp/docker-install
RUN rm -rf /tmp/docker-install/docker/dockerd
RUN mv /tmp/docker-install/docker/docker* /usr/local/bin/
RUN rm -rf /tmp/docker-install
RUN groupadd -g ${DOCKER_GID} docker
RUN usermod -aG staff,docker jenkins

# Run container as user 'jenkins'
USER jenkins
