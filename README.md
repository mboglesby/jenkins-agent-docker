# jenkins-agent-with-docker
Jenkins Agent Docker container with Docker installed

### Use the following docker command to build the image on your machine: ###
docker build --build-arg DOCKER_ID=\`getent group docker | cut -d: -f3\` -t <image_tag> .

### Use the following docker command when running: ###
docker run <image_tag> -v /var/run/docker.sock:/var/run/docker.sock -url http://<jenkins_server_url>:<port> <jenkins_agent_secret> <agent_name>
