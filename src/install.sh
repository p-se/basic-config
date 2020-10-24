#!/usr/bin/env bash

function install-configs() {
    if [ -d config_files ] ; then
        cd config_files
        if [ -d root ] ; then
            cd root
            cp --parents -rv . /
            cd -
        fi
        if [ -d home ] ; then
            cd home
            cp --parents -rv . $HOME/
            cd -
        fi
    fi
}

install-configs
