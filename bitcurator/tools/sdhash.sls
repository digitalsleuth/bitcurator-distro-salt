sdhash:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/sdhash/sdhash/archive/v3.4.tar.gz
        echo "Got sdhash with wget" >> /var/log/bitcurator-install.log 2>&1
        tar -zxf v3.4.tar.gz
        cd sdhash-3.4
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf sdhash-3.4
        rm v3.4.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/sdhash
