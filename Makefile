ping:
	ansible -m ping homelab

sshkey-init:
	ssh-keygen -f ~/.ssh/<keyname> -t ed25519 -q -N "" && ./sshkey-copy.sh

provision:
	ansible-playbook playbook.yml --ask-become-pass --ask-vault-pass

vault-decrypt:
	ansible-vault decrypt group_vars/vault.yml

vault-encrypt:
	ansible-vault encrypt group_vars/vault.yml

