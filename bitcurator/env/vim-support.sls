/home/bcadmin/.vim:
  file.recurse:
    - source: salt://bitcurator/env/.vim
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep

  cmd.run:
    - name: |
        mkdir /home/bcadmin/.vim/backups
        mkdir /home/bcadmin/.vim/swaps
    - cwd: /tmp
    - user: bcadmin
    - group: bcadmin
    - shell: /bin/bash
    - timeout: 12000
