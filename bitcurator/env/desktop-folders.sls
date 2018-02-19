/home/bcadmin/Desktop:
  file.recurse:
    - source: salt://bitcurator/env/desktop-folders
    - user: bcadmin
    - group: bcadmin
    - makedirs: True
    - file_mode: keep