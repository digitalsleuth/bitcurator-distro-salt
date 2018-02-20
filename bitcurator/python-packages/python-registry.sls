include:
  - ..packages.python-pip
  - ..packages.python3-pip

python-registry:
  pip.installed:
    - name: python-registry
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
