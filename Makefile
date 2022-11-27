all:
	make -C ansible

init:
	make -C ansible apply-terraform

setup-servers:
	make -C ansible setup-servers

deploy-app:
	make -C ansible deploy-app

# Helpers
encrypt-vault:
	@ make -C ansible encrypt-vault

decrypt-vault:
	@ make -C ansible decrypt-vault