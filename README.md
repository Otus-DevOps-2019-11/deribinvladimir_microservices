###### Status of master branch builds: [![Build Status](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-11/deribinvladimir_microservices)

## deribinvladimir_microservices

### kubernetes-2
###### What's been done during this homework:
- yaml-manifests for reddit app were created and tested with minikube and gke
- yaml-manifests for gke dashboard were created
- terraform config was created to deploy kubernetes cluster in gcp
###### Additional resources used during this homework:
- minikube: [Getting started with Kubernetes and Docker with minikube](https://medium.com/@yzhong.cs/getting-started-with-kubernetes-and-docker-with-minikube-b413d4deeb92), [https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/](https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/)
- [kind (alternative way to test local k8s cluster)](https://kubernetes.io/docs/setup/learning-environment/kind/), [kind in GitHub](https://github.com/kubernetes-sigs/kind)
- GKE and terraform: [google_container_cluster](https://www.terraform.io/docs/providers/google/r/container_cluster.html), [Kubernetes Cluster in Google Kubernetes Engine (GKE)](https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/k8s-cluster-gke), [How to create k8s cluster in GKE with namespaces](https://issue.life/questions/50088355)

### kubernetes-1
###### What's been done during this homework:
- comment-deployment.yml, mongo-deployment.yml, post-deployment.yml and ui-deployment.yml manifests were created for our reddit microservice
- kubernetes cluster was created using "Kubernetes The hard way" manual and our manifests were checked on it
- ansible configs were created to deploy KTHW
###### Additional resources used during this homework:
- [info about regions and zones of gcp](https://cloud.google.com/compute/docs/regions-zones)
- [tmux tips and tricks](https://losst.ru/shpargalka-po-tmux)
- [Kubernetes the not so hard way with Ansible](https://www.tauceti.blog/post/kubernetes-the-not-so-hard-way-with-ansible-the-basics/)
- one more easy way to deploy kubernetes cluster: [manual](https://github.com/justmeandopensource/kubernetes/blob/master/docs/install-cluster.md) and [video](https://www.youtube.com/watch?v=Araf8JYQn3w)

### logging-1
###### What's been done during this homework:
- docker-compose-logging.yml was created to use elastic stack
- fluentd was set up, code of our app was updated to send logs and fluentd was added to services configs as logging driver
- logging in kibana was checked
- some different filters were added in fluentd config and checked in kibana
- logging for ui and parsing rules were added and checked in kibana
- grok-templates were added and checked
- zipkin was added to all our services and some traces were checked
- \* another grok-template was added to fluentd config
- \* bugged app was traced by zipkin and error was found
###### Additional resources used during this homework:
- grok-templates for fluentd: [readme](https://github.com/fluent/fluent-plugin-grok-parser/blob/master/README.md) and [examples of templates](https://github.com/fluent/fluent-plugin-grok-parser/tree/master/patterns)

### monitoring-2
###### What's been done during this homework:
- docker-compose.yml was splitted to tow different parts - for apps and for monitoring services
- grafana was installed with some dashboards and different requests
- business logic monitoring dashboard was added
- alertmanager was added and integration set up with slack
- Makefile was updated for new services
- \* docker was configured to send metrics to prometheus and dashboard was added in grafana for it
- \* telegraf was added to get metrics from docker host and appropriate dashboard was added to grafana
- \* some metrics with using procentile were added
- \* alertmanager was set up to send alerts through email too
- \** grafana config was recreated to install and run our dashboards automatically during deploy
- \** metrics to check ui time response and timeout of any our services were added
- \** metrics from stackdriver were added
- \*** trickster was added and grafana was reconfigured successfully to use trickster as data source
###### Additional resources used during this homework:
- [cAdvisor](https://github.com/google/cadvisor)
- [Docker and system monitoring Dashboard by Thibaut Mottet](https://grafana.com/grafana/dashboards/893)
- useful slack info: [how to check webhook](https://codex.so/slack-apps-tutorial)
- docker experimental mode: [how to setup using daemon.josn](https://docs.docker.com/config/thirdparty/prometheus/) and [what to do if daemon.json not works](https://github.com/docker/for-linux/issues/165)
- [Docker overview dashboard](https://grafana.com/grafana/dashboards/1229)
- telegraf: [docker hub](https://hub.docker.com/_/telegraf), [how to configure](https://github.com/influxdata/telegraf/blob/master/docs/CONFIGURATION.md), [how to set up](https://community.influxdata.com/t/prometheus-with-telegraf/12173/3), [client to send to prometheus](https://github.com/influxdata/telegraf/tree/master/plugins/outputs/prometheus_client), [list of metrics](https://github.com/influxdata/telegraf/tree/master/plugins/inputs/docker), [simple example of set up](https://blog.nobugware.com/post/2016/telegraf_prometheus_metrics_swiss_army_knife/), [good example of set telegraf-influxdb-grafana w/o prometheus](https://ezhvsalate.ru/posts/monitoring-za-chas-influxdb-telegraf-grafana/)
- prometheus: [some useful examples of requests](https://prometheus.io/docs/prometheus/latest/querying/examples/), [examples of checks](https://cloudprober.org/getting-started/#running-prometheus)
alertmanager: [how to set up alerts to be send through email](https://prometheus.io/docs/alerting/configuration/) and [examples](https://github.com/prometheus/alertmanager/blob/master/doc/examples/simple.yml)
- grafana - import dashboards automatically: [how to inport provider](http://www.inanzzz.com/index.php/post/yglp/export-and-import-grafana-dashboard-and-data-sources), [how to provision boards and providers](https://grafana.com/docs/grafana/latest/administration/provisioning/), [default paths and setting for docker image of grafana](https://grafana.com/docs/grafana/latest/installation/configure-docker/), samples of provisioning config: [one](https://github.com/grafana/grafana/blob/master/conf/provisioning/dashboards/sample.yaml), [two](https://community.grafana.com/t/dashboard-provisioning/5667/5), [three](https://grafana.com/docs/grafana/latest/administration/provisioning/#dashboards); [datasources](https://grafana.com/docs/grafana/latest/administration/provisioning/#datasources)
- stackdriver: [stackoverflow tips](https://stackoverflow.com/questions/48617103/monitoring-stackdriver-using-prometheus), [frodenas exporter](https://github.com/frodenas/stackdriver_exporter), [how to create account with appropriate rights for stacdriver](https://github.com/frodenas/stackdriver_exporter#credentials-and-permissions)
- trickster: [official repo](https://github.com/tricksterproxy/trickster), [how to cinfigure](https://github.com/tricksterproxy/trickster/blob/master/docs/configuring.md), [example of cinfig file](https://github.com/tricksterproxy/trickster/blob/master/cmd/trickster/conf/example.conf)
- autoheal + awx: [role from geerlingguy](https://github.com/geerlingguy/ansible-role-awx), [interesting post from habr](https://habr.com/ru/company/pixonic/blog/352184/), [autoheal repo](https://github.com/openshift/autoheal), [small sample of using autoheal](https://issue.life/questions/47088261)
- prometheus+nodexport+grafana: [sample 1](https://medium.com/southbridge/prometheus-monitoring-ba8fbda6e83), [sample 2](https://kamaok.org.ua/?p=3332)

### monitoring-1
###### What's been done during this homework:
- docker host was created and prometheus installed and explored onto it
- new structure was created in repo and docker image was created with prometheus configuration to monitor our services
- our service with prometheus were set up and explored with prometheus monitoring
- habitation of prometheus was checked with diffrenet stopped services
- node exporter was added to monitor our docker host
- \* percona mongodb exporter was added to monitor mongodb state
- \* google cloudprober was added to check availability of our services
- \* Makefile was created to build and push images, and to stop/run our services
###### Additional resources used during this homework:
- [node_exporter](https://github.com/prometheus/node_exporter)
- [precona mongodb exporter](https://github.com/percona/mongodb_exporter) and [how to use it](https://devconnected.com/mongodb-monitoring-with-grafana-prometheus/) [in different ways](https://dock.co.nz/post/build-mongodb-exporter-for-prometheus/)
- [cloudprober on git](https://github.com/google/cloudprober), [cloudprober - getting started](https://cloudprober.org/getting-started/), [cloudprober images on docker hub](https://hub.docker.com/r/cloudprober/cloudprober/tags)
- make/Makefile: [include](https://www.gnu.org/software/make/manual/html_node/Include.html), [variables in Makefile](https://www.opennet.ru/docs/RUS/linux_parallel/node257.html), [:makefile:4: *** missing separator.  Stop. error](https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop)

### gitlab-ci-1
###### What's been done during this homework:
- gitlab ci was installed and prepared to use
- ci/cd pipeline was created to build, test and deploy services with different envs, include dynamic ones
- build of docker containers in dind mode was tested
- \* docker container creation was added to build step for reddit app
- \* deploy of created container was tested to server with gitlab ci using gitlab runner in shell executor mode
- \* deploy of created container was tested to external instance using terraform + ansible with dynamic inventory
- \* integration for our gitlab ci with our personal slack channel was added: https://devops-team-otus.slack.com/archives/CBJESDZPH
- \* automation of creation many instances with runner in shell executor mode using terraform and ansible was created and tested
- \* automation of creation many instances with runner in docker mode in docker container using terraform and ansible was created and tested
###### Additional resources used during this homework:
- gitlab ci [pipeline yaml structure](https://docs.gitlab.com/ee/ci/yaml/#before_script-and-after_script)
- gitlab ci [predefined variables](https://docs.gitlab.com/ee/ci/variables/predefined_variables.html) to use in pipelines
- how to authorize in gcp with [terraform](https://www.terraform.io/docs/providers/google/index.html) ([getting started](https://www.terraform.io/docs/providers/google/guides/getting_started.html) + [manual from google](https://cloud.google.com/community/tutorials/getting-started-on-gcp-with-terraform)) and [ansible (in pipelines and ansible.cfg)](https://docs.ansible.com/ansible/latest/scenario_guides/guide_gce.html) using gcp service accoung
- how to [run](https://docs.gitlab.com/runner/install/docker.html) and [register](https://docs.gitlab.com/runner/register/index.html#docker) [gitlab runner](https://gitlab.com/gitlab-org/gitlab-runner/#installation) using docker
- [how to build docker images with gitlab runner usign different runner modes](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html)
- [how to pass variables to ansible playbook](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html)
- modules for ansible to work with docker: [docker_container_module](https://docs.ansible.com/ansible/latest/modules/docker_container_module.html), [docker_image_module](https://docs.ansible.com/ansible/latest/modules/docker_image_module.html)
- [module for ansible to work with gitlub-runner](https://docs.ansible.com/ansible/latest/modules/gitlab_runner_module.html)
- ansible galaxy role to work with gitlub runner: [riemers.gitlab-runner](https://galaxy.ansible.com/riemers/gitlab-runner)
- ansible [useful special variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) to use it in playbooks during privisioning
- [docker-in-docker - pro and contra](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)

### docker-4
###### What's been done during this homework:
- different network drivers were tested and compared using joffotron/docker-net-tools image
- usage of different bridge networks was implemented and tested for the same and different containers
- docker-compose was installed and tested using simple docker-compose.yml
- docker-compose.yml was updated to use few networks and network aliases and parametrized variables using .env file
- base name, which uses as prefix for container names by docker compose, usually corresponds to folder name where docker-compose runs; it can be overriden by COMPOSE_PROJECT_NAME environment variable in .env file or by '-p / --project-name' command line option
- docker-compose.overriden.yml was created to add abilities to change app code without rebuilding images and to run puma in debug mode
###### Additional resources used during this homework:
- [Docker network creation](https://docs.docker.com/engine/reference/commandline/network_create/)
- [docker-compose installation](https://docs.docker.com/compose/install/#installcompose)
- [docker-compose commands](https://docs.docker.com/compose/reference/)
- [how to parametrize variables in docker-compose](https://docs.docker.com/compose/env-file/)
- [how to parametrize network parameters](https://docs.docker.com/compose/networking/) and [explanation of network options in compose file](https://docs.docker.com/compose/compose-file/compose-file-v2/#ipv4-address-ipv6-address)
- how to change prexfix in container names: [docker env file](https://docs.docker.com/compose/env-file/) and [more variants from stackoverflow](https://stackoverflow.com/questions/33045358/docker-compose-image-named-prefix-s-1-instead-of-s)
- docker-compose.override.yml from [docker-compose documentation](https://docs.docker.com/compose/extends/) and [habr article in Otus blog](https://habr.com/ru/company/otus/blog/337688/)

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
