python-pip:
  pkg.installed

python-registry:
  pip.installed:
    - name: python-registry
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
