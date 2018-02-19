pefile:
  pip.installed:
    - name: pefile
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
