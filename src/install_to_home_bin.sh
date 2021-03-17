#!/bin/env bash
BASE_URI="https://raw.githubusercontent.com/greergan/bin/main/src"

wget_exists () {
    status=`which wget`
    return $?
}

download_script () {
    for script in open_sudo close_sudo install_current_vagrant
    do
        wget -q $BASE_URI/$script -O ${HOME}/bin/$script
        chmod u+x ${HOME}/bin/$script
    done
}

# brute force silent creation
mkdir -p ${HOME}/bin
wget_exists

if [ $? = 0 ]; then
    download_script
else
    sudo apt-get -q install wget -y
    download_script
fi

echo "Remember to 'source ~/.profile' to use your scripts immediately, otherwise logout and log back in."
