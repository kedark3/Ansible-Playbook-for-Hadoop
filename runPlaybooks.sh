#!/bin/bash
ansible-playbook -i hosts droplet.yml 


ansible-playbook -i hosts hadoop.yml -vvv
