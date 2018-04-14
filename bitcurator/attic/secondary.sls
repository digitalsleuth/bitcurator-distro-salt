include:
  - bitcurator.python-packages

bitcurator-version-file:
  file.managed:
    - name: /etc/bitcurator-version
    - source: salt://VERSION
    - user: root
    - group: root
    - require:
      - sls: bitcurator.python-packages