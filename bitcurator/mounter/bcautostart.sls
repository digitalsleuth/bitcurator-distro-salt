{% set user = salt['pillar.get']('bitcurator_user') %}

/home/{{ user }}/.config/autostart/bcpolicyapp.py.desktop:
  file.managed:
    - source: salt://bitcurator/mounter/bcpolicyapp.py.desktop
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
