#!/bin/bash

echo This is deploy.sh

ansible localhost -m shell -a 'uname -a'
