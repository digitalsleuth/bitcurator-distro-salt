include:
  - bitcurator.config.hostname
  - bitcurator.config.user
  - bitcurator.config.timezone
  - bitcurator.config.icon-setup
  - bitcurator.config.mount-setup
  - bitcurator.config.background-setup
  - bitcurator.config.salt-minion

bitcurator-config:
  test.nop:
    - name: bitcurator-config
    - require:
      - sls: bitcurator.config.hostname
      - sls: bitcurator.config.user
      - sls: bitcurator.config.timezone
      - sls: bitcurator.config.icon-setup
      - sls: bitcurator.config.mount-setup
      - sls: bitcurator.config.background-setup
      - sls: bitcurator.config.salt-minion
