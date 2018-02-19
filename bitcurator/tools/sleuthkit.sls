sleuthkit:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/sleuthkit/sleuthkit /usr/share/sleuthkit
        cd /usr/share/sleuthkit
        git fetch
        git checkout master
        ./bootstrap
        ./configure
        make -s
        make install
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/tsk_loaddb
