/home/bcadmin/:
  file.recurse:
    - source: salt://bitcurator/env/.vim
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep