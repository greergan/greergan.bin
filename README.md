# bin
Collection of useful scripts which get installed into ${HOME}/bin

## install_to_home_bin.sh
installs all scripts automatically, creating ${HOME}/bin if needed

```
curl -s https://raw.githubusercontent.com/greergan/bin/main/src/install_to_home_bin.sh | bash
```

## open_sudo
modifies /etc/sudoers by appending a NOPASSWD entry for the logged in user
```
wget https://raw.githubusercontent.com/greergan/bin/main/src/open_sudo -O ${HOME}/bin/open_sudo
```

## close_sudo
modifies /etc/sudoers by removing the  NOPASSWD entry for the logged in user
```
wget https://raw.githubusercontent.com/greergan/bin/main/src/close_sudo -O ${HOME}/bin/close_sudo
```