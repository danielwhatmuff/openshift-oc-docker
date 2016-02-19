# Openshift command line tool for interacting with Openshift 3

# Summary

- A Docker build for the oc command line tool, used to control Openshift. For more info, see [Get Started with the CLI](https://docs.openshift.com/enterprise/3.0/cli_reference/get_started_cli.html)

# Requirements

- Docker :whale: - if you are on Mac, checkout the [Docker Toolbox](http://docs.docker.com/mac/step_one/)

# To build the Docker image

- Build the image using docker
```bash
$ docker build -t openshift-oc-docker .
```
- Run the container
```bash
$ docker run -ti --rm openshift-oc-docker oc version
```
- Optionally add an alias to your local profile so you can run the container as a cli (you may also want to mount kube config or pass env vars...)
```bash
$ alias oc='docker run --rm -ti openshift-oc-docker oc'
$ oc version
```

# Alternatively, you can use the Docker Hub automated build

[![](https://badge.imagelayers.io/danielwhatmuff/openshift-oc-docker:latest.svg)](https://imagelayers.io/?images=danielwhatmuff/openshift-oc-docker:latest 'Get your own badge on imagelayers.io')

```bash
$ docker pull danielwhatmuff/openshift-oc-docker
```

### Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.
