#!/usr/bin/env bash

# Dariusz Stefanski
# 10.09.2014

. ~/.bash-functions
. ~/.bash-thunderbird-functions

REPO_ROOT=`pwd`

createBackupDir
installHomeDotfiles $REPO_ROOT
installSshConfigs $REPO_ROOT/ssh/configs
installBin $REPO_ROOT/bin work-priv
installThunderbirdFilters $REPO_ROOT/mail
