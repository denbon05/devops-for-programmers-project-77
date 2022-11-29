# devops-for-programmer-project-77

### Hexlet tests and linter status:

[![Actions Status](https://github.com/denbon05/devops-for-programmers-project-77/workflows/hexlet-check/badge.svg)](https://github.com/denbon05/devops-for-programmers-project-77/actions)

## Usage

<h3>Prerequisites</h3>
<ul>
  <li>
    <a href="https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html">
    ansible
    </a>
  </li>
  <li><a href="https://developer.hashicorp.com/terraform/downloads">terraform</a></li>
  <li><a href="https://cloud.digitalocean.com/">Domain in DO</a></li>
  <li><a href="https://pre-commit.com/">pre-commit</a></li>
</ul>

<p><b>Put your vault password to <i>ansible/.vault-password</i></b></p>

<h4>Create infrastructure, setup servers and deploy the app</h4>

```bash
make
```

<h4>Create infrastructure with terraform</h4>

```bash
make init
```

<h4>Prepare the servers</h4>

```bash
make setup-servers
```

<h4>Deploy the app</h4>

```bash
make deploy-app
```

<p>
  The app will be available on 
  <a href="https://hexlet.club" target="_blank">
    hexlet.club
  </a>
</p>
