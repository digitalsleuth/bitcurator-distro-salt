regripper:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/keydet89/RegRipper2.8
        mv RegRipper2.8 /usr/share/regripper
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
