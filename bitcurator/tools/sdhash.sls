sdhash:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/sdhash/sdhash/archive/v3.4.tar.gz
        tar -zxf v3.4.tar.gz
        cd sdhash-3.4
        make
        make install
        ldconfig
        cd /tmp
        rm -rf sdhash-3.4
        rm v3.4.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/sdhash
