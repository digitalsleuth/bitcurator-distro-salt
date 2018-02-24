/home/bcadmin/.config/autostart/bcpolicyapp.py.desktop:
  file.managed:
    - source: salt://bitcurator/mounter/bcpolicyapp.py.desktop
    - user: root
    - group: root
    - file_mode: keep
    - makedirs: True