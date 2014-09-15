#! /bin/bash

# Validate kp files for given or current month.
# Darek Stefanski
# 10.09.2014

if [ $# -ne 1 ]
then
  date=`date +"%Y.%m"`
else
  date=$1
fi

MY_KP_DIR=~/work/kp/d.stefanski
#TODO: validate files $MY_KP_DIR/$date.*.kp

