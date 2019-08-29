#!/usr/bin/env bash

set -e

image_tag="yocto-env:1.0"

cd docker
docker build -t ${image_tag} .
