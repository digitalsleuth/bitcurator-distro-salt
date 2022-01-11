lightgrep:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/strozfriedberg/liblightgrep.git /tmp/liblightgrep
        cd /tmp/liblightgrep
        echo "Cloned lightgrep" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        autoreconf -fi >> /var/log/bitcurator-install.log 2>&1
        ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu >> /var/log/bitcurator-install.log 2>&1
        make -j4 >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        cp pylightgrep/lightgrep.py /usr/local/bin
        chmod 755 /usr/local/bin/lightgrep.py
        cd /tmp
        rm -rf liblightgrep
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/lightgrep.py
