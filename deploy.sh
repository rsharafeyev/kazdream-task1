#!/usr/bin/env bash

cd /vagrant
nomad plan hello-world.nomad
nomad run hello-world.nomad
sleep 5
nomad plan nginx.nomad
nomad run nginx.nomad
