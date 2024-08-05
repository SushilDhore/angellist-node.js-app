**Project Deployment Guide
**Overview

This project demonstrates how to build, push, and deploy a Docker image to an EC2 instance using GitHub Actions. 
The setup involves using Docker Compose, Docker Hub, and GitHub Actions for continuous integration and deployment.

Access application : http://15.206.165.39/


Configuration
1. Docker Compose

We use Docker Compose to define and run multi-container Docker applications. The docker-compose.yml file is used to set up the services needed for the application. Ensure that this file is present in your repository and correctly configured.

2. Docker Hub Repository

The Docker image is built and pushed to Docker Hub. Your Docker Hub repository should be set up with the following details:

    Repository Name: your-image-name
    Tag: latest

3. GitHub Actions

GitHub Actions is used to automate the build, push, and deployment process. The workflow configuration is stored in .github/workflows/docker-image.yml.
Workflow File (docker-image.yml)

4. GitHub Actions Secrets

The following secrets need to be configured in your GitHub repository:

    DOCKER_USERNAME: Your Docker Hub username.
    DOCKER_PASSWORD: Your Docker Hub password.
    EC2_SSH_KEY: The content of your EC2 SSH private key (sushil.pem).
    EC2_HOST: The public DNS or IP address of your EC2 instance (ec2-15-206-165-39.ap-south-1.compute.amazonaws.com).

To add secrets:

    Go to your GitHub repository.
    Navigate to Settings > Secrets and variables > Actions.
    Click New repository secret and add each secret.


