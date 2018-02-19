disktype:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/kamwoods/disktype
        cd disktype/src
        make
        cp disktype /usr/local/bin
        ldconfig
        cd /tmp
        rm -rf disktype
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/disktype
