#!/bin/bash

set -e

sudo -v
# sudo keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

function rootuser {
  sudo passwd -l root
}

function firewall {
  local curr=$(firewall-cmd --get-default-zone)
  if [ "x$curr" != "xdrop" ]; then
    sudo firewall-cmd --set-default-zone drop
  fi
}

function packages {
  sudo dnf upgrade -y

  sudo dnf install -y \
    git \
    vim-enhanced \
    docker \
    tmux \
    pass \
    libu2f-host

  # start docker on boot
  if ! systemctl is-enabled docker.service; then
    sudo systemctl enable docker
    sudo systemctl start docker
  fi
}

function clonerepo {
  local ghrepo=$1
  shift
  local cmds=$*

  if [[ ! $ghrepo =~ \/([a-zA-Z0-1\.\-]+)\.git ]]; then
    echo "invalid github repo: $ghrepo"
    exit 1
  fi

  local dir=$HOME/src/${BASH_REMATCH[1]}
  if [ ! -d "$dir" ]; then
    tmpdir=$(mktemp -d)
    echo "cloning ${ghrepo} ..."
    git clone git@github.com:${ghrepo} $tmpdir
    pushd $tmpdir
    git submodule update --init --recursive
    popd
    mv $tmpdir $dir

    if [ ! -z "${cmds}" ]; then
      pushd ${dir}
      eval ${cmds} || true
      popd
    fi
  fi
}

function gitrepos {
  mkdir -p $HOME/src

  clonerepo cruzdb/zlog.git
  clonerepo cruzdb/cruzdb.git
  clonerepo noahdesu/thesis.git
  clonerepo noahdesu/nwat.xyz.git

  #clonerepo cfpdb/cfpdb.git npm install
  #clonerepo cfpdb/cfp.pub.git npm install

  #pushd $HOME/src/zlog
  #./install-deps.sh
  #popd

  #pushd $HOME/src/ceph
  #./install-deps.sh
  #popd

  # TODO: don't run these if they have been run
  #pushd $HOME/src/thesis
  #./build.sh
  #popd
}

function link() {
  rm -f $HOME/$1
  ln -s $PWD/$1 $HOME/$1 || true
}

#firewall
#rootuser
#packages

link .tmux.conf
link .gitconfig
link .vim
link .vimrc

gitrepos

## TODO: ~/Library/Fonts on macOS
#link .fonts

#firewall-cmd --get-active-zones
#echo "status: $(sudo firewall-cmd --state)"
