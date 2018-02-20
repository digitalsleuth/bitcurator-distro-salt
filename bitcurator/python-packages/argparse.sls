python-pip:
  pkg.installed

argparse:
  pip.installed:
    - name: argparse
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
