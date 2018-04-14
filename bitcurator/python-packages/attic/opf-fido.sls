include:
  - ..packages.python-pip

opf-fido:
  pip.installed:
    - name: opf-fido
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
