# Ansible in Docker

Docker image with pre-installed Ansible, to be used as Ansible control machine.

Base image: `ubuntu:bionic`

## Usage

- Build image:

```sh
docker build -t ansible .
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
