[![Logo](https://wiki.bitcurator.net/downloads/BitCurator-400px.png)

# bitcurator-distro-salt

[![GitHub issues](https://img.shields.io/github/issues/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/issues)
[![GitHub forks](https://img.shields.io/github/forks/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/network)

This repo includes relevant salt states and supporting files to build a stack of data analysis, forensics, and security tools using Ubuntu and SaltStack. This build stack is intended to support setup of the BitCurator imaging and disk analysis environment. This repo is **in development**.

## Dependencies

Currently tested with daily builds of Ubuntu 18.04LTS. Prior to installing and using either SaltStack or bitcurator-distro salt, create a fresh Ubuntu 18.04LTS environment in a VM or on a dedicated host, login, and execute the following in a terminal:

```shell
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install git
# Optional - dkms for persistence of kernel modules, vim editor for convenience
sudo apt-get install dkms vim
```

## Installing and preparing SaltStack

Current packaging of SaltStack is available in the 18.04 repositories. Simply run:

```shell
sudo apt-get install salt-minion
sudo service salt-minion stop
```

Visit http://repo.saltstack.com/#ubuntu for additional details.

## Installing and running from this repo

```shell
git clone https://github.com/bitcurator/bitcurator-distro-salt /tmp/salt
sudo salt-call -l info --local --file-root=/tmp/salt state.apply bitcurator.mods
```

Once the salt process has completed, reboot the VM or host. The environment should now be a fully configured build of BitCurator.

## Additional Option (not required for regular build) 

Installing only select packages

```shell
sudo salt-call --local --file-root=/tmp/bitcurator state.sls bitcurator.packages,bitcurator.python-packages
```

Salt may also be installed from a dedicated repo (if needed for alternate buidls):

```shell
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" | sudo tee /etc/apt/sources.list.d/saltstack.list
sudo apt-get update
sudo apt-get install salt-minion
sudo service salt-minion stop
```

