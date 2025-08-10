# Network Pi

Ansible playbook + roles for homelab setup. These playbooks are intended to be run against a fresh install of Raspbian (64bit) Lite OS on a Raspberry Pi. The machine running ansible needs to be able to SSH to the raspberries.

## Manual steps required:

- You must manually install the OS.
- SSH connection needs to be setup.
- Copy a ssh public key across using `make sshkey-init`.
- The users on the raspberries should have a complex password set.

## General Steps

- Updates all packages.
- Enabled NetworkManager
- Disable root login via SSH.
- Installs some common defaults. `git, vim, htop, curl, wget`.
- Docker.
- UFW firewall.
- Fail2Ban
- log2ram to preserve SD health.
- Pi-hole. A DNS based adblocker.
