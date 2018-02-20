include:
  - ..packages.python-pip
  - ..packages.python3-pip

python-dateutil:
  pip.installed:
    - name: python-dateutil
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
