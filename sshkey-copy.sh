#!/bin/bash
for ip in `cat ./list_of_servers`; do
    ssh-copy-id -i ~/.ssh/key.pub <user>@$ip
done