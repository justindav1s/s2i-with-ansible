#!/bin/bash

SRC_ROOT=/tmp/src
ANSIBLE_ROOT=$SRC_ROOT/ansible

echo This is deploy.sh

echo I am `whoami`

echo `pwd`

ansible localhost -m shell -a 'uname -a'

ansible-playbook -vv \
    --extra-vars "src_root=${SRC_ROOT} ansible_root=${ANSIBLE_ROOT}" \
    ${ANSIBLE_ROOT}/playbooks/deploy-webapp.yml