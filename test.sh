#!/usr/bin/env bash

docker run --rm -it -v ./install.sh:/install.sh alpine sh /install.sh
