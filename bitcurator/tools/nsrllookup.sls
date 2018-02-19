nsrllookup:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/rjhansen/nsrllookup
        cd nsrllookup
        cmake -D CMAKE_BUILD_TYPE=Release .
        make
        make install
        cd /tmp
        rm -rf nsrllookup
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
