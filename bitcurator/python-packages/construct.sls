construct:
  pip.installed:
    - name: construct
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
