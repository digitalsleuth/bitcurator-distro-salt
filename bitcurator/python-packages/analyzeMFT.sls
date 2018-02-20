include:
  - ..packages.python-pip
  - ..packages.python3-pip

analyzeMFT:
  pip.installed:
    - name: analyzeMFT
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
