include:
  - bitcurator.packages.libxml2-dev
  - bitcurator.packages.libxslt-dev

python-pip:
  pkg.installed

lxml:
  pip.installed:
    - name: lxml
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
