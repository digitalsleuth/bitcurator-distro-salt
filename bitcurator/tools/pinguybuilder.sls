pinguybuilder:
  cmd.run:
    - name: |
        cp /srv/salt/bitcurator/externals/pinguybuilder_5.1-8_all.deb /tmp
        cd /tmp
        dpkg -i pinguybuilder_5.1-8_all.deb
        rm pinguybuilder_5.1-8_all.deb
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000

