#!/bin/env bash
BASE_URI="https://raw.githubusercontent.com/greergan/greergan.bin/main/src"

if_wget_exists () {
    status=`which wget`
    return $?
}

download_lib () {
    for library in colors os_information
    do
        wget -q $BASE_URI/lib/$library.bash -O ${HOME}/bin/lib/$library.bash
    done
}

download_script () {
    for script in open_sudo close_sudo install_current_vagrant gitclean
    do
        wget -q $BASE_URI/$script -O ${HOME}/bin/$script
        chmod u+x ${HOME}/bin/$script
    done
}

if_wget_exists
if [ $? = 0 ]; then
    mkdir -p ${HOME}/bin/lib
    download_lib
    download_script
else
    #sudo apt-get -q install wget -y
    #download_script
    echo "The program wget is not installed"
fi
