.PHONY: homebase

homebase:
	ansible-playbook -i hosts --vault-password-file=~/.homebase-vault.txt site.yml 
