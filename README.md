# Docker Template

This is a template for making images, you can use this to build on the docker hub
and also on any system with docker installed.

## setup

### Building
the 2 Dockerfile's are for nginx unit and nginx/php-fpm, if you know your app works with uint

1. Update the Dockerfile for your application
2. build the image `docker build -t image_name .`

### Build on Docker hub
You can use this template to build images on the docker hub, you need to setup
build rules.

### Build with Github Actions
To start using Github actions, add `Actions secrets` to the repository.

You will need:
- DOCKER_USERNAME: your docker hub username
- DOCKER_PASSWORD: a new token from the docker hub

Make sure your DOCKER_PASSWORD is a token, not your password!
