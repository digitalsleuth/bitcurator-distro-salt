dumpfloppy:
  cmd.run:
    - name: |
        cd /tmp
        git clone http://offog.org/git/dumpfloppy.git
        cd dumpfloppy
        echo "Cloned dumpfloppy" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        aclocal --force >> /var/log/bitcurator-install.log 2>&1
        autoconf -f >> /var/log/bitcurator-install.log 2>&1
        automake --add-missing >> /var/log/bitcurator-install.log 2>&1
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf dumpfloppy
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/dumpfloppy
