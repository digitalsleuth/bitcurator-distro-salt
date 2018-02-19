include:
  - bitcurator.python-packages.analyzeMFT
  - bitcurator.python-packages.argparse
  - bitcurator.python-packages.configobj
  - bitcurator.python-packages.construct
  - bitcurator.python-packages.docopt
  - bitcurator.python-packages.et_xmlfile
  - bitcurator.python-packages.jdcal
  - bitcurator.python-packages.lxml
  - bitcurator.python-packages.matplotlib
  - bitcurator.python-packages.pefile
  - bitcurator.python-packages.python-dateutil
  - bitcurator.python-packages.python-evtx
  - bitcurator.python-packages.python-registry
  - bitcurator.python-packages.setuptools
  - bitcurator.python-packages.six
  - bitcurator.python-packages.unicodecsv
  - bitcurator.python-packages.wheel

bitcurator-python-packages:
  test.nop:
    - name: bitcurator-python-packages
    - require:
      - bitcurator.python-packages.analyzeMFT
      - bitcurator.python-packages.argparse
      - bitcurator.python-packages.configobj
      - bitcurator.python-packages.construct
      - bitcurator.python-packages.docopt
      - bitcurator.python-packages.et_xmlfile
      - bitcurator.python-packages.jdcal
      - bitcurator.python-packages.lxml
      - bitcurator.python-packages.matplotlib
      - bitcurator.python-packages.pefile
      - bitcurator.python-packages.python-dateutil
      - bitcurator.python-packages.python-evtx
      - bitcurator.python-packages.python-registry
      - bitcurator.python-packages.setuptools
      - bitcurator.python-packages.six
      - bitcurator.python-packages.unicodecsv
      - bitcurator.python-packages.wheel
