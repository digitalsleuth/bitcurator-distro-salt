python-pip:
  pkg.installed

wheel:
  pip.installed:
    - name: wheel
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
