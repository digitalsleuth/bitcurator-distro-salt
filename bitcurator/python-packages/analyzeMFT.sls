analyzeMFT:
  pip.installed:
    - name: analyzeMFT
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip