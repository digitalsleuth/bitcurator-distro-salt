ssdeep:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://sourceforge.net/projects/ssdeep/files/ssdeep-2.13/ssdeep-2.13.tar.gz
        tar zxvf ssdeep-2.13.tar.gz
        cd ssdeep-2.13
        ./configure
        make
        make install
        ldconfig
        cd /tmp
        rm -rf ssdeep-2.13
        rm ssdeep-2.13.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/ssdeep
