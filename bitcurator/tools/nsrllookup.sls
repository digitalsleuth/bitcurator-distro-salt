nsrllookup:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/rjhansen/nsrllookup/archive/1.3.0.tar.gz
        tar zxf 1.3.0.tar.gz
        cd nsrllookup-1.3.0
        cmake -D CMAKE_BUILD_TYPE=Release .
        make
        make install
        cd /tmp
        rm 1.3.0.tar.gz
        rm -rf nsrllookup-1.3.0
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
