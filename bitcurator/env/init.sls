include:
  - bitcurator.env.desktop-folders
  - bitcurator.env.launcher-trust
  - bitcurator.env.etc
  - bitcurator.env.lib
  - bitcurator.env.usr

bitcurator-env:
  test.nop:
    - name: bitcurator-env
    - require:
      - sls: bitcurator.env.desktop-folders
      - sls: bitcurator.env.launcher-trust
      - sls: bitcurator.env.etc
      - sls: bitcurator.env.lib
      - sls: bitcurator.env.usr
