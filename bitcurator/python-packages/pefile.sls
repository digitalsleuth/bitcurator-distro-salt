include:
  - ..packages.python-pip
  - ..packages.python3-pip

pefile:
  pip.installed:
    - name: pefile
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
