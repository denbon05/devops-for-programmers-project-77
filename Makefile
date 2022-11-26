init:
	make -C ansible apply-terraform

# Helpers
encrypt-vault:
	make -C ansible encrypt-vault

decrypt-vault:
	make -C ansible decrypt-vault