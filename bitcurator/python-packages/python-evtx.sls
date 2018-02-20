include:
  - ..packages.python-pip
  - ..packages.python3-pip

python-evtx:
  pip.installed:
    - name: python-evtx
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
