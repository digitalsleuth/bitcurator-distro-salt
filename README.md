![Logo](https://github.com/BitCurator/bitcurator.github.io/blob/master/logos/BitCurator-Basic-400px.png)

# bitcurator-distro-salt

[![GitHub issues](https://img.shields.io/github/issues/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/issues)
[![GitHub forks](https://img.shields.io/github/forks/bitcurator/bitcurator-distro-salt.svg)](https://github.com/bitcurator/bitcurator-distro-salt/network)

This repo includes relevant salt states and supporting files to build a stack of data analysis, forensics, and security tools using Ubuntu and SaltStack. This build stack is intended to support setup of the BitCurator imaging and disk analysis environment.

Visit https://github.com/BitCurator/bitcurator-distro/wiki/Releases to download the latest release built using this repo!

## Pre-Installation Setup

Create a fresh Ubuntu 18.04LTS environment in a VM or on a dedicated host with the hostname "bitcurator" and a user named "bcadmin". Login as "bcadmin", and execute the following in a terminal:

```shell
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt install git dkms
```

## Installing and preparing SaltStack

Current packaging of SaltStack is available in the 18.04 repositories. Simply run:

```shell
sudo apt install salt-minion
sudo service salt-minion stop
```

Visit http://repo.saltstack.com/#ubuntu for additional details.

## Installing and running from this repo

```shell
git clone https://github.com/bitcurator/bitcurator-distro-salt /tmp/salt
sudo salt-call -l info --local --file-root=/tmp/salt state.apply bitcurator.primary
```

Reboot the VM or host. The environment should now be a fully configured build of BitCurator.

## What's in this repository

This repo has been organized to make the process of maintaining and contributing to BitCurator development as transparent as possible. An explanation of the layout follows.

The **bitcurator** directory contains all support files and salt states in a number of different directories:

- **attic**: Legacy and unused files that have been kept for reference or potential future use
- **config**: Salt states and support files for environment and user configuration
- **debs**: Deb packages that are required but do not have a stable external home
- **env**: Environment support files and salt states for the user desktop and various tools
- **externals**: Source packages that are either not deb packaged or for which a legacy version is required
- **mounter**: Mount policy tools
- **packages**: all deb packages (to be installed with apt-get)
- **python-packages**: all Python 3 packages (to be installed with pip)
- **repos**: additional repositories that must be enabled
- **tools**: tools that must be installed from source

## Alternate Build and Configuration Options (not required for regular build) 

Installing only select packages

```shell
sudo salt-call --local --file-root=/tmp/bitcurator state.sls bitcurator.packages,bitcurator.python-packages
```

Salt may also be installed from a dedicated repo (if needed for alternate buidls):

```shell
wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main" | sudo tee /etc/apt/sources.list.d/saltstack.list
sudo apt-get update
sudo apt-get install salt-minion
sudo service salt-minion stop
```

