#!/bin/sh
ansible-playbook -i inventory playbook.yaml \
 -u $USER \
 --extra-vars "ansible_sudo_pass=$SUDO_PASSWORD" \
 --extra-vars="fqdn=$FQDN" \
 --extra-vars="acme_email=$ACME_EMAIL" \
 --extra-vars="mosquitto_user=$USER" \
 --extra-vars="mosquitto_pass=$MOSQUITTO_PASS"
echo $MOSQUTTO_PASS