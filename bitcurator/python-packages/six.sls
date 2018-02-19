six:
  pip.installed:
    - name: six
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
