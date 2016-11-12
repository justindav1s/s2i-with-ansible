#!/bin/bash

echo This is deploy.sh

echo I am `whoami`

echo `pwd`

ansible localhost -m shell -a 'uname -a'
