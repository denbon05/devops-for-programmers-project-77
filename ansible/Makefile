all:
	ansible-playbook playbook.yml

apply-terraform:
	ansible-playbook terraform.yml

setup-servers:
	ansible-playbook setup_servers.yml

deploy-app:
	ansible-playbook deploy.yml

# Helpers
init-vault-password:
	touch .vault-password

encrypt-vault:
	@ bash scripts/encrypt-vault.sh

decrypt-vault:
	@ bash scripts/decrypt-vault.sh