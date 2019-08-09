# jenkins-agent-with-docker
This is a Jenkins Agent Docker container with Docker installed within the container. This container can be used to spin up a Jenkins Agent that has the ability to perform Docker build operations.

### Use the following docker command to build the image: ###

Note: The DOCKER_GID build arg must match the Group ID of the 'docker' group on the host machine that you will be running the container on.

`docker build --build-arg DOCKER_GID=<docker_group_id_on_host> -t <image_tag> .`

If you are building on the same machine that you will be running the container on, you can use the following command:

`docker build --build-arg DOCKER_GID=$(getent group docker | cut -d: -f3) -t <image_tag> .`

### Use the following docker command to run: ###

`docker run <image_tag> -v /var/run/docker.sock:/var/run/docker.sock -url http://<jenkins_server_url>:<port> <jenkins_agent_secret> <agent_name>`
