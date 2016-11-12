#!/bin/bash

echo This is deploy.sh

echo `pwd`

ansible localhost -m shell -a 'uname -a'
