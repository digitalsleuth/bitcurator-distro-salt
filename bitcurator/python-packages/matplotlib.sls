python-pip:
  pkg.installed

matplotlib:
  pip.installed:
    - name: matplotlib
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
