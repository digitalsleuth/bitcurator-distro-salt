python-pip:
  pkg.installed

setuptools:
  pip.installed:
    - name: setuptools
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
