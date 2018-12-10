ficlam:
  cmd.run:
    - name: |
        mkdir /home/bcadmin/.fiwalk
        cp /usr/share/sleuthkit/tools/fiwalk/plugins/ficlam.sh /home/bcadmin/.fiwalk
        chmod 755 /home/bcadmin/.fiwalk/ficlam.sh
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
