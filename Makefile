test-inventory:
	ansible -m ping dev

run:
	ansible-playbook playbook.yml --ask-become-pass --ask-vault-pass
