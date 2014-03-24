#!/bin/bash
basedir=`pwd`
function update {
    cd "$basedir/$1"
    git fetch && git reset --hard origin/master
    cd ../
    git submodule update --init --recursive
    git add $1
}
update Spigot
