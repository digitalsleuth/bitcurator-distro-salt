hashdb:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/NPS-DEEP/hashdb/archive/v3.1.0.tar.gz
        echo "Got hashdb with wget" >> /var/log/bitcurator-install.log 2>&1
        tar -zxf v3.1.0.tar.gz >> /var/log/bitcurator-install.log 2>&1
        cd hashdb-3.1.0 
        ./bootstrap.sh >> /var/log/bitcurator-install.log 2>&1
        ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf hashdb-3.1.0
        rm v3.1.0.tar.gz
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
