# jenkins-agent-with-docker
Jenkins Agent Docker container with Docker installed

### Use the following docker command when running: ###
docker run <image_name> -v /var/run/docker.sock:/var/run/docker.sock -url http://<jenkins_server_url>:<port> <jenkins_agent_secret> <agent_name>
