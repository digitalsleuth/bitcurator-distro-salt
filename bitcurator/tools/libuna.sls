libuna:
  cmd.run:
    - name: |
        cp /tmp/salt/bitcurator/externals/libuna-alpha-20150927.tar.gz /tmp
        cd /tmp
        tar zxf libuna-alpha-20150927.tar.gz 
        cd libuna-20150927
        ./configure
        make -s
        make install
        ldconfig
        cd /tmp
        rm -rf libuna-20150927
        rm libuna-alpha-20150927.tar.gz
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/unabase

