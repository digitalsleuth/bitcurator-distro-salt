include:
  - ..packages.python-pip

unicodecsv:
  pip.installed:
    - name: unicodecsv
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
