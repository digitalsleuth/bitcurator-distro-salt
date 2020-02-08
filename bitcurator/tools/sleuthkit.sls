sleuthkit:
  cmd.run:
    - name: |
        cd /usr/share
        wget -q https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.8.0/sleuthkit-4.8.0.tar.gz
        echo "Got sleuthkit 4.8.0 with wget" >> /var/log/bitcurator-install.log 2>&1
        tar zxf sleuthkit-4.8.0.tar.gz      
        cd sleuthkit-4.8.0
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        cd ../
        rm sleuthkit-4.8.0.tar.gz
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/tsk_loaddb
