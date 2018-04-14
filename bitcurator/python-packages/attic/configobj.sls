include:
  - ..packages.python-pip

configobj:
  pip.installed:
    - name: configobj
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
