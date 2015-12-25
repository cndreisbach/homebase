tags = $(subst roles/,,$(wildcard roles/*))
.PHONY: homebase $(tags)

homebase:
	ansible-playbook -i hosts --vault-password-file=~/.homebase-vault.txt site.yml

$(tags):
	ansible-playbook -i hosts -t $@ --vault-password-file=~/.homebase-vault.txt site.yml
