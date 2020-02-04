###### Status of master branch builds: [![Build Status](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices)

# # deribinvladimir_microservices

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
- * small sample of infrastructure was developed to create some instances with docker in gcp to run reddi app containers in it
###### Additional resources used during this homework:
- to install and set up docker: [docs.docker.com](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/), [tutorial from DO](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru), [post-install settings](https://docs.docker.com/install/linux/linux-postinstall/)
- [signals in unix](https://ru.wikipedia.org/wiki/%D0%A1%D0%B8%D0%B3%D0%BD%D0%B0%D0%BB_(Unix))
- [install docker-machine](https://docs.docker.com/machine/install-machine/)
- [ansible - docker_container_module](https://docs.ansible.com/ansible/latest/modules/docker_container_module.html)
