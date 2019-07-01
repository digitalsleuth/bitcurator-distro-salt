{% set user = salt['pillar.get']('bitcurator_user') %}

include:
  - .user

folders-config-autostart:
  file.directory:
    - name: /home/{{ user }}/.config/autostart
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - require:
      - user: bitcurator-user-{{ user }}

