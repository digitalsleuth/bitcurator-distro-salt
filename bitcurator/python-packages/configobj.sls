configobj:
  pip.installed:
    - name: configobj
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
