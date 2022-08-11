#!/bin/bash

mkdir ~/.ssh
echo 'blabla' > ~/.ssh/authorized_keys 
if [ -f ~/.ssh/authorized_keys ]; then ssh_authorized_keys="blablabla"; echo $ssh_authorized_keys > ~/.ssh/authorized_keys; fi;
unset ssh_authorized_keys

/bin/bash -c "sleep 6045d"
