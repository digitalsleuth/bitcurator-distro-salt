afflibv3:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/sshock/AFFLIBv3/archive/v3.7.18.tar.gz
        echo "Got afflibv3 with wget" >> /var/log/bitcurator-install.log 2>&1
        tar zxf v3.7.18.tar.gz >> /var/log/bitcurator-install.log 2>&1
        cd AFFLIBv3-3.7.18
        ./bootstrap.sh >> /var/log/bitcurator-install.log 2>&1
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf AFFLIBv3-3.7.18
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/affinfo

