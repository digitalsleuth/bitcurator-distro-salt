python-pip:
  pkg.installed

jdcal:
  pip.installed:
    - name: jdcal
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
