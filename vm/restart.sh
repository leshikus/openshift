#!/bin/sh

set -e
set -vx

restart_vagrant() {
    vagrant destroy -f
    vagrant up
}

test -n "$1"
restart_vagrant
vagrant scp init-jumphost.sh jumphost:

vagrant ssh jumphost -c "sh init-jumphost.sh $1"

