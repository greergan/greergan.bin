#!/usr/bin/env bash
OS=`head -1 /etc/os-release | tr -d \"  | cut -d'=' -f2`

echo "Install Vagrant for Linux from zip file."
echo "This script will install into ${HOME}/bin."
echo "${HOME}/bin will be created if it doesn't exist."
echo "This script will append the PATH variable in ${HOME}/.profile if it exists."

if [ "`which curl`" == "" ]; then
    echo "The curl command line tool is required to run this script."
    echo -e "curl command not found, please install and rerun.\n"
    echo "Host is running $OS"
    case $OS in
        Ubuntu) echo -e "install curl using=> sudo apt -y install curl";;
        Fedora) echo -e "install curl using=> sudo dnf -y install curl";;
    esac
    exit 0;
fi

[ ! -d ${HOME}]/bin ] && mkdir ${HOME}/bin

echo "Grabbing file URL from https://www.vagrantup.com/downloads"
URL=`curl -s https://www.vagrantup.com/downloads | egrep -o 'https?://[^ ")]+' | grep zip`
echo -e "Downloading $URL\n"
cd ${HOME}/bin && curl $URL | zcat > vagrant && chmod +x vagrant
source ${HOME}/.profile
EXE=`vagrant --version`
if [ ! "$EXE" = "" ]; then
    echo "$EXE is now installed"
    echo "Either logout and log back in or do=> source ~/.profile to be able to run vagrant for your ${HOME}/bin directory."
    exit 0
fi

echo "If the script got this far then something did not go as planned."