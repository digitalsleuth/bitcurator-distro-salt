nsrllookup:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/rjhansen/nsrllookup/archive/1.3.0.tar.gz
        echo "Got nsrllookup using wget" >> /var/log/bitcurator-install.log 2>&1
        tar zxf 1.3.0.tar.gz
        cd nsrllookup-1.3.0
        cmake -D CMAKE_BUILD_TYPE=Release . >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install
        cd /tmp
        rm 1.3.0.tar.gz
        rm -rf nsrllookup-1.3.0
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
