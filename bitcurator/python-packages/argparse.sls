include:
  - ..packages.python-pip
  - ..packages.python3-pip

argparse:
  pip.installed:
    - name: argparse
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
