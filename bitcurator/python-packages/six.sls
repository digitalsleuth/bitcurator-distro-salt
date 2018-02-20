python-pip:
  pkg.installed

six:
  pip.installed:
    - name: six
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
