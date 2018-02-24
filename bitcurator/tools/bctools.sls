bctools:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/bitcurator/bitcurator-distro-tools /tmp/bitcurator-distro-tools
        cd /tmp/bitcurator-distro-tools
        python3 setup.py build
        python3 setup.py install
        cd /tmp
        rm -rf bitcurator-distro-tools
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
