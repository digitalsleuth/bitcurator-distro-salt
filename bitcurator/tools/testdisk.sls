testdisk:
  cmd.run:
    - name: |
        cd /tmp
        wget -q http://www.cgsecurity.org/testdisk-7.0.tar.bz2
        bunzip2 testdisk-7.0.tar.bz2
        tar xvf testdisk-7.0.tar
        cd testdisk-7.0
        ./configure
        make
        make install
        ldconfig
        cd /tmp
        rm -rf testdisk-7.0
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/testdisk
