#!/bin/bash
ANSIBLE_SSH_ARGS="-C -o ControlMaster=auto -o ControlPersist=60s -o ControlPath=/tmp/ans-%h-%r"\
 REVISION=`git log --pretty=format:"%H" -n 1`\
  REMOTE_USER="ubuntu"\
   OHI_MYSQL_PASSWORD="password" ansible-playbook -i servers install.yml -v
