include:
  - bitcurator.repos
  - bitcurator.packages
  - bitcurator.python-packages
  - bitcurator.tools
  - bitcurator.env
  - bitcurator.mounter
  - bitcurator.config

bitcurator-version-file:
  file.managed:
    - name: /etc/bitcurator-version
    - source: salt://VERSION
    - user: root
    - group: root
    - require:
      - sls: bitcurator.repos
      - sls: bitcurator.packages
      - sls: bitcurator.python-packages
      - sls: bitcurator.tools
      - sls: bitcurator.env
      - sls: bitcurator.mounter
      - sls: bitcurator.config