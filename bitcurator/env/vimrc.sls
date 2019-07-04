{% set user = salt['pillar.get']('bitcurator_user') %}

/home/{{ user }}/.vimrc:
  file.managed:
    - source: salt://bitcurator/env/.vimrc
    - user: {{ user }}
    - group: {{ user }}
    - file_mode: keep
