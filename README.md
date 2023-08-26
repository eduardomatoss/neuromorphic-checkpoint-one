# neuromorphic-checkpoint-one
Faculty Project - Neuromorphic Computing and Supercomputers

## Technology and Resources

- [Python 3.10](https://www.python.org/downloads/release/python-31010/) - **pre-requisite**
- [Docker](https://www.docker.com/get-started) - **pre-requisite**
- [Docker Compose](https://docs.docker.com/compose/) - **pre-requisite**
- [Pipenv](https://github.com/pypa/pipenv)

*Please pay attention on **pre-requisites** resources that you must install/configure.*

### How to Install

```
make local/install
```

### How to Build

```
make docker/build
```

### How to Run

```
make local/run
make docker/run
```

*The project will be running at `http://localhost:5000/`*

### How to Deploy

#### Kubernetes Deployment Quick Guide

This quick guide provides a summarized version of the steps to deploy your system on Kubernetes using the provided script and YAML files.

#### pre-requisites

- **Kubernetes Cluster:** Access to a Kubernetes cluster ([microK8s](https://microk8s.io/) assumed).

- **kubectl:** Installed and configured via [microk8s](https://microk8s.io/).

#### Run Deployment Script:

``` sh
chmod +x .deploy/deploy.sh
./.deploy/deploy.sh <namespace>
```

**Helpful commands**

*Please, check all available commands in the [Makefile](Makefile) for more information*.