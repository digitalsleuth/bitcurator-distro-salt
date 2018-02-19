fido:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/openpreserve/fido
        cd fido
        python3 setup.py build
        python3 setup.py install
        cd /tmp
        rm -rf fido
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/fido
