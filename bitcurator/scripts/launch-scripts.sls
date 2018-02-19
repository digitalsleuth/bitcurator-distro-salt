scripts-launchers:
  file.recurse:
    - name: /usr/local/bin
    - source: salt://bitcurator/files/launch-scripts/
    - file_mode: 755