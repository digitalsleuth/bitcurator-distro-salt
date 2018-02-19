argparse:
  pip.installed
    - name: argparse
    - bin_env: '/usr/bin/pip3'
    - require
      - pkg: python-pip
