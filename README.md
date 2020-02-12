###### Status of master branch builds: [![Build Status](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices)

## deribinvladimir_microservices

### docker-3
###### What's been done during this homework:
- downloaded, installed and builded application with microservices architecture
- network was created and application was run and checked on the docker-host
- containers were restarted with new network aliases using --env commandline parameter
- Dockerfiles were optimized for ui and comment using ruby:alpine3.10 images
- docker volume was created and checked with destroy and recreate containers that posts and comments still alive
###### Additional resources used during this homework:
- [Docker images optimization](https://habr.com/ru/company/ruvds/blog/440658/)
- [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#sort-multi-line-arguments)
- [ruby alpine images from docker hub](https://hub.docker.com/_/ruby?tab=tags&page=1&name=alpine)
- [--env command line parameter](https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file)

### docker-2
###### What's been done during this homework:
- new project was created, integration with travis and slack was added
- docker was installed and tested with base image "hello world" and base commands like `run`, `ps`, `start`, `attach` etc with options
- test container was created from ubuntu image, then images was created and log was written to docker-1.log was created from it
- `docker inspect` from image and from container was compared and results of comparison were added to docker-1.log
- new project was created in gce for microservice homeworks
- docker-machine was installed to use gce for VMs
- new instance was created in gce with docker by docker-machine and tested for creation of container with reddit app
- new account was created in Docker Hub and our new image with reddit app was uploaded into it and checked for run from it in another console
- * small sample of infrastructure was developed to create some instances with docker in gcp to run reddit app containers in it
###### Additional resources used during this homework:
- to install and set up docker: [docs.docker.com](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/), [tutorial from DO](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru), [post-install settings](https://docs.docker.com/install/linux/linux-postinstall/)
- [signals in unix](https://ru.wikipedia.org/wiki/%D0%A1%D0%B8%D0%B3%D0%BD%D0%B0%D0%BB_(Unix))
- [install docker-machine](https://docs.docker.com/machine/install-machine/)
- [ansible - docker_container_module](https://docs.ansible.com/ansible/latest/modules/docker_container_module.html)
