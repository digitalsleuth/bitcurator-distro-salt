libewf:
  cmd.run:
    - name: |
        cp /srv/salt/bitcurator/externals/libewf-20140608.tar.gz /tmp
        cd /tmp
        "Got libewf from externals"
        tar zxf libewf-20140608.tar.gz
        cd libewf-20140608
        ./configure --enable-v1-api >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf libewf-20140608
        rm libewf-20140608.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/ewfinfo

