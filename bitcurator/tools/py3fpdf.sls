py3fpdf:
  cmd.run:
    - name: |
        cp -r /tmp/salt/bitcurator/externals/py3fpdf /tmp
        cd /tmp
        cd py3fpdf
        python3 setup.py build
        python3 setup.py install
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
