md5deep:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/jessek/hashdeep
        cd hashdeep
        ./bootstrap.sh
        ./configure
        make
        make install
        ldconfig
        cd /tmp
        rm -rf hashdeep
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/md5deep
