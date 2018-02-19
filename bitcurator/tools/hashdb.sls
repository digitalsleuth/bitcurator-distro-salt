hashdb:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/NPS-DEEP/hashdb/archive/v3.0.0.tar.gz
        tar -zxf v3.0.0.tar.gz
        cd hashdb-3.0.0
        chmod 755 bootstrap.sh
        ./bootstrap.sh
        ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu
        make -s
        make install
        ldconfig
        cd /tmp
        rm -rf hashdb-3.0.0
        rm v3.0.0.tar.gz
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
