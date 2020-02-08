afflibv3:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/sshock/AFFLIBv3 /tmp/AFFLIBv3
        echo "Cloned afflibv3" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        cd /tmp/AFFLIBv3
        ./bootstrap.sh >> /var/log/bitcurator-install.log 2>&1
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf AFFLIBv3
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/affinfo

