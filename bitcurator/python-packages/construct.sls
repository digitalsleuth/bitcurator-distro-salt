include:
  - ..packages.python-pip
  - ..packages.python3-pip

construct:
  pip.installed:
    - name: construct
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
