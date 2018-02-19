unicodecsv:
  pip.installed:
    - name: unicodecsv
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
