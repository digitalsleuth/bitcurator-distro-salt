python-pip:
  pkg.installed

configobj:
  pip.installed:
    - name: configobj
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
