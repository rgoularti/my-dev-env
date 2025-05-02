# My development environment

Ansible playbook that automates the setup of my development environment.

## How to run

On a fresh Ubuntu based machine run the following commands:

- Install [ansible](https://docs.ansible.com/ansible/latest/getting_started/index.html):

```
sudo apt install -y ansible
```

- Pull the [ansible playbook](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html):

```
sudo ansible-pull - U https://github.com/rgoularti/my-dev-env.git
```

## How to test

In order to test the ansible playbook before applying on a real machine:

- Build the docker image:

```
docker build -t dev-env:test .
```

- Run the docker image on interactive mode:

```
docker run --rm -it --entrypoint bash dev-env:test
```

- Inside the docker container, run the ansible playbook:

```
ansible-playbook ansible/local.yml
```
