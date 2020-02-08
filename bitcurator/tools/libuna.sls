libuna:
  cmd.run:
    - name: |
        cp /srv/salt/bitcurator/externals/libuna-alpha-20150927.tar.gz /tmp
        cd /tmp
        echo "Got libuna from externals" >> /var/log/bitcurator-install.log 2>&1
        tar zxf libuna-alpha-20150927.tar.gz 
        cd libuna-20150927
        ./configure >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cd /tmp
        rm -rf libuna-20150927
        rm libuna-alpha-20150927.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/unabase

