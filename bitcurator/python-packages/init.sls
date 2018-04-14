include:
  - bitcurator.python-packages.cmdinstall

bitcurator-python-packages:
  test.nop:
    - name: bitcurator-python-packages
    - require:
      - sls: bitcurator.python-packages.cmdinstall
