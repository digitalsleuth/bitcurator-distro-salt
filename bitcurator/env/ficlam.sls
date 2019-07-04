{% set user = salt['pillar.get']('bitcurator_user') %}

ficlam:
  cmd.run:
    - name: |
        mkdir /home/{{ user }}/.fiwalk
        cp /usr/share/sleuthkit/tools/fiwalk/plugins/ficlam.sh /home/{{ user }}/.fiwalk
        chmod 755 /home/{{ user }}/.fiwalk/ficlam.sh
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
