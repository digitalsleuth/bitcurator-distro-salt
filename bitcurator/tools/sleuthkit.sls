sleuthkit:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/sleuthkit/sleuthkit /usr/share/sleuthkit
        cd /usr/share/sleuthkit
        echo "Cloned sleuthkit"
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        git fetch >> /var/log/bitcurator-install.log 2>&1
        git checkout master >> /var/log/bitcurator-install.log 2>&1
        ./bootstrap >> /var/log/bitcurator-install.log 2>&1
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/tsk_loaddb
