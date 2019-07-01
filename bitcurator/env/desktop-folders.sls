{% set user = salt['pillar.get']('bitcurator_user') %}

/home/{{ user }}/Desktop:
  file.recurse:
    - source: salt://bitcurator/env/desktop-folders
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - file_mode: keep
