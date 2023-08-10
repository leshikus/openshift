#!/bin/sh

cd $(dirname "$0")

vagrant plugin install vagrant-proxyconf vagrant-reload
vagrant up

