#!/bin/bash

# Creates kp files for current month if don't exist and open them.

# Darek Stefanski
# 11.09.2014

. ~/.bash-functions
. ~/.bash-paths

function createFiles {
    for project in work
    do
        file=$ym.$project.kp

        if [ ! -f $file ]
        then
            createFile $file
        fi
    done
}

function createFile {
    file=$1
    info "Creating file $file"

    touch $file

    echo "#("$ym")" >> $file
    echo >> $file
    echo "#################################################################" >> $file
    echo "# ??.?? - ??.??" >> $file
    echo "`date +"%d.%m.%Y"` -- ??h --dst" >> $file

    git add $file
}

cd $KP_PATH
ym=`date +"%Y.%m"`
createFiles
files=`ls ${ym}* | grep -v "~"`
startProgram kate $files

