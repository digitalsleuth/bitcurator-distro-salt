/home/bcadmin/.vim:
  file.recurse:
    - source: salt://bitcurator/env/.vim
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep