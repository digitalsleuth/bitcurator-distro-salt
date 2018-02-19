include:
  - bitcurator.scripts.launch-scripts

bitcurator-scripts:
  test.nop:
    - name: bitcurator-scripts
    - require:
      - sls: bitcurator.scripts.launch-scripts