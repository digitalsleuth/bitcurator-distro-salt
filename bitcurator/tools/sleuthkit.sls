sleuthkit:
  cmd.run:
    - name: |
        cd /usr/share
        wget -q https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.11.1/sleuthkit-4.11.1.tar.gz
        echo "Got sleuthkit 4.11.1 with wget" >> /var/log/bitcurator-install.log 2>&1
        rm -rf sleuthkit && tar zxf sleuthkit-4.11.1.tar.gz && mv sleuthkit-4.11.1 sleuthkit
        cd sleuthkit
        cp /srv/salt/bitcurator/externals/ficlam.sh tools/fiwalk/plugins
        cp /srv/salt/bitcurator/externals/clamconfig.txt tools/fiwalk/plugins
        cp /srv/salt/bitcurator/externals/ficonfig.txt tools/fiwalk/plugins
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        cd ../
        rm sleuthkit-4.11.1.tar.gz
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/tsk_loaddb
