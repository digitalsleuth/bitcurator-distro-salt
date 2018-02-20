python-pip:
  pkg.installed

analyzeMFT:
  pip.installed:
    - name: analyzeMFT
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
