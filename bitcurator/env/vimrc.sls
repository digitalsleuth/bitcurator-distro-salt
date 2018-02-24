/home/bcadmin/.vimrc:
  file.recurse:
    - source: salt://bitcurator/env/.vimrc
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep