python-evtx:
  pip.installed:
    - name: python-evtx >= 0.6.1
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
