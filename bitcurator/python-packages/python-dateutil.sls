python-dateutil:
  pip.installed:
    - name: python-dateutil >= 2.4.2
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
