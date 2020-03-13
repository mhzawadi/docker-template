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

### Build with drone.io

This includes a drone config file, all you need to do is enable the repo on your drone server.

the config uses 4 secret
- telegram_user: the user to send a telegram message too
- telegram_token: a token to use the telegram API
- dockerhub_username: your Docker hub username
- dockerhub_password: your Docker hub password
