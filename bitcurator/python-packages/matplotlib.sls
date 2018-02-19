matplotlib:
  pip.installed:
    - name: matplotlib
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
