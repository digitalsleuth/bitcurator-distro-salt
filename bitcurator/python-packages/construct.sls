include:
  - ..packages.python-pip

construct:
  pip.installed:
    - name: construct
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
