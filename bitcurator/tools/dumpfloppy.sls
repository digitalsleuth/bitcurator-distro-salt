dumpfloppy:
  cmd.run:
    - name: |
        cd /tmp
        git clone http://offog.org/git/dumpfloppy.git
        cd dumpfloppy
        aclocal --force && autoconf -f && automake --add-missing && ./configure
        make
        make install
        ldconfig
        cd /tmp
        rm -rf dumpfloppy
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/dumpfloppy
