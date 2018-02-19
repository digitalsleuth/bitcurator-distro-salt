python-magic:
  pip.installed:
    - name: python-magic
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
