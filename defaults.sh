#/bin/sh

if [ "$1" == "" ]; then
  directory="inventory"
else
  directory=$1
fi

mkdir -p $directory/group_vars
mkdir -p $directory/host_vars

if ! [ -f $directory/group_vars/all/install_filebeat.yml ]; then
  cp roles/ansible-role-filebeat/defaults/main.yml \
    $directory/group_vars/all/install_filebeat.yml
fi
