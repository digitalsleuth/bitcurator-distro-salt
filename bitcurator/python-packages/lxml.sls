include:
  - bitcurator.packages.libxml2-dev
  - bitcurator.packages.libxslt-dev

lxml:
  pip.installed:
    - name: lxml
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
