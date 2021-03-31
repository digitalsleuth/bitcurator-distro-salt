include:
  - bitcurator.tools.pyfpdf
  - bitcurator.tools.libuna
  - bitcurator.tools.libewf
  - bitcurator.tools.afflibv3
  - bitcurator.tools.sleuthkit
  - bitcurator.tools.hfsexplorer
  - bitcurator.tools.lightgrep
  - bitcurator.tools.bulkextractor
  - bitcurator.tools.bctools
  - bitcurator.tools.dumpfloppy
  - bitcurator.tools.sdhash
  - bitcurator.tools.regripper
  - bitcurator.tools.nsrllookup

bitcurator-tools:
  test.nop:
    - name: bitcurator-tools
    - require:
      - sls: bitcurator.tools.pyfpdf
      - sls: bitcurator.tools.libuna
      - sls: bitcurator.tools.libewf
      - sls: bitcurator.tools.afflibv3
      - sls: bitcurator.tools.sleuthkit
      - sls: bitcurator.tools.hfsexplorer
      - sls: bitcurator.tools.lightgrep
      - sls: bitcurator.tools.bulkextractor
      - sls: bitcurator.tools.bctools
      - sls: bitcurator.tools.dumpfloppy
      - sls: bitcurator.tools.sdhash
      - sls: bitcurator.tools.regripper
      - sls: bitcurator.tools.nsrllookup
