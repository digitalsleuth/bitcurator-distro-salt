{% set user = salt['pillar.get']('bitcurator_user') %}

/home/{{ user }}/.vim:
  file.recurse:
    - source: salt://bitcurator/env/.vim
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - file_mode: keep

  cmd.run:
    - name: |
        mkdir /home/{{ user }}/.vim/backups
        mkdir /home/{{ user }}/.vim/swaps
    - cwd: /tmp
    - user: {{ user }}
    - group: {{ user }}
    - shell: /bin/bash
    - timeout: 12000
