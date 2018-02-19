libsodium:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://download.libsodium.org/libsodium/releases/libsodium-1.0.11.tar.gz
        tar -zxf libsodium-1.0.11.tar.gz
        cd libsodium-1.0.11
        ./configure
        make
        make install
        ldconfig
        cd /tmp
        rm libsodium-1.0.11.tar.gz
        rm -rf libsodium-1.0.11
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
