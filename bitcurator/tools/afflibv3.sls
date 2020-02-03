afflibv3:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/sshock/AFFLIBv3 /tmp/AFFLIBv3
        echo "The Git HEAD is `git rev-parse HEAD`." >> $HOME/bitcurator-install.log 2>&1
        cd /tmp/AFFLIBv3
        ./bootstrap.sh
        ./configure
        make -s
        make install
        ldconfig
        cd /tmp
        rm -rf AFFLIBv3
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/affinfo

