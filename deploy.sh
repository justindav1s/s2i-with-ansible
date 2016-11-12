#!/bin/bash

export ANSIBLE_ROOT=/tmp/src/ansible

echo This is deploy.sh

echo I am `whoami`

echo `pwd`

ansible localhost -m shell -a 'uname -a'

ansible-playbook -vv ${ANSIBLE_ROOT}/playbooks/check.yml