/home/bcadmin/.local:
  file.recurse:
    - source: salt://bitcurator/env/.local
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep