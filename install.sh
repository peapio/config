#!/bin/bash

current_path=$(readlink -f $(dirname $0))

echo $current_path

function install()
{
    set -x
    cp ${current_path}/vim/vimrc ${HOME}/.vimrc
    cp ${current_path}/tools/tools.sh ${HOME}/.tools.sh
    echo "source ${HOME}/.tools.sh" >> ${HOME}/.bashrc
    source ${HOME}/.bashrc
    set +x
}

install
