{% set user = salt['pillar.get']('bitcurator_user') %}

mountwinalias:
  cmd.run:
    - name: |
        if ! grep -i "alias mountwin" /home/{{ user }}/.bash_aliases > /dev/null 2>&1
        then
                echo "alias mountwin='mount -o ro,loop,show_sys_files,streams_interface=windows'" >> $HOME/.bash_aliases
        fi
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
