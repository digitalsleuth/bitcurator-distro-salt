wheel:
  pip.installed:
    - name: wheel
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
    - upgrade: True
