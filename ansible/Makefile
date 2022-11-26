apply-terraform:
	ansible-playbook terraform.yml

# Helpers
init-vault-password:
	touch .vault-password

encrypt-vault:
	@ bash scripts/encrypt-vault.sh

decrypt-vault:
	@ bash scripts/decrypt-vault.sh