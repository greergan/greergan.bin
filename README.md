# bin
Collection of useful scripts which get installed into ${HOME}/bin

## install_to_home_bin.sh
installs all scripts automatically, creating ${HOME}/bin if needed

```
curl -s https://github.com/greergan/bin/tree/main/install_to_home_bin.sh | bash
```

## open_sudo
modifies /etc/sudoers by appending a NOPASSWD entry for the logged in user

## close_sudo
modifies /etc/sudoers by removing the  NOPASSWD entry for the logged in user
