pinguybuilder:
  cmd.run:
    - name: |
        cp /tmp/salt/bitcurator/externals/pinguybuilder_5.1-3_all.deb /tmp
        cd /tmp
        dpkg -i pinguybuilder_5.1-3_all.deb
        rm pinguybuilder_5.1-3_all.deb
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000

