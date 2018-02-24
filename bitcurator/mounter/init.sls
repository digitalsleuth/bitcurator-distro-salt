include:
  - bitcurator.mounter.bcmount
  - bitcurator.mounter.bcpolicy
  - bitcurator.mounter.bcautostart

bitcurator-mounter:
  test.nop:
    - name: bitcurator-mounter
    - require:
      - sls: bitcurator.mounter.bcmount
      - sls: bitcurator.mounter.bcpolicy
      - sls: bitcurator.mounter.bcautostart
