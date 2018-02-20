python-pip:
  pkg.installed

et_xmlfile:
  pip.installed:
    - name: et_xmlfile
    - bin_env: '/usr/bin/pip3'
    - upgrade: True
    - require:
      - pkg: python-pip
