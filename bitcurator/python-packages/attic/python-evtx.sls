include:
  - ..packages.python-pip

python-evtx:
  pip.installed:
    - name: python-evtx
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
