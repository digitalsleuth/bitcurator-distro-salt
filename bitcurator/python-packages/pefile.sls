python-pip:
  pkg.installed

pefile:
  pip.installed:
    - name: pefile
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
