python-pip:
  pkg.installed

unicodecsv:
  pip.installed:
    - name: unicodecsv
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
