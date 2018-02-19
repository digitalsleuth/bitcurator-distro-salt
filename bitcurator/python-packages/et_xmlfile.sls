et_xmlfile:
  pip.installed:
    - name: et_xmlfile
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
