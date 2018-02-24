/home/bcadmin/.vimrc:
  file.managed:
    - source: salt://bitcurator/env/.vimrc
    - user: bcadmin
    - group: bcadmin
    - file_mode: keep