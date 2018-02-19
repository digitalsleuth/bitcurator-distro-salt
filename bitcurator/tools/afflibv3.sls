afflibv3:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/sshock/AFFLIBv3 /tmp/AFFLIBv3
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

