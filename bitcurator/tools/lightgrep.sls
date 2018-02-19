lightgrep:
  cmd.run:
    - name: |
        git clone --recursive git://github.com/strozfriedberg/liblightgrep.git /tmp/liblightgrep
        cd /tmp/liblightgrep
        autoreconf -fi
        ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu
        make -j4 -s
        make install
        cp pylightgrep/lightgrep.py /usr/local/bin
        chmod 755 /usr/local/bin/lightgrep.py
        cd /tmp
        rm -rf liblightgrep
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/lightgrep.py
