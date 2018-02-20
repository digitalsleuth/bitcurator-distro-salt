python-pip:
  pkg.installed

python-dateutil:
  pip.installed:
    - name: python-dateutil
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
