jdcal:
  pip.installed:
    - name: jdcal
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
