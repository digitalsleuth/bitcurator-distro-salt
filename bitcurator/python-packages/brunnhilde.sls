include:
  - ..packages.python-pip

brunnhilde:
  pip.installed:
    - name: brunnhilde
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
