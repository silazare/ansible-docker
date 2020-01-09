# Ansible in Docker

Docker image with pre-installed Ansible 2.9.2 version.

Base image: `ubuntu:bionic`

## Usage

- Build image:

```sh
docker build -t ansible .
```
- Build image with another Ansible version:

```sh
docker build --build-arg ANSIBLE_VERSION=2.8.6 -t ansible .
```

- Go to playbook directory:

```sh
cd playbook
```

- Examples:

1) run shell
```sh
docker run -ti --rm --volume ${PWD}:/ansible ansible
```

2) run ad-hoc
```sh
docker run -ti --rm --volume ${PWD}:/ansible ansible ansible -m ping localhost
```

2) run playbook
```sh
docker run -ti --rm --volume ${PWD}:/ansible ansible ansible-playbook site.yml
```

If `requirements.txt` exists in playbook directory, it will be installed before execution.
