{% set user = salt['pillar.get']('bitcurator_user') %}

/home/{{ user }}/.local:
  file.recurse:
    - source: salt://bitcurator/env/.local
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - file_mode: keep
