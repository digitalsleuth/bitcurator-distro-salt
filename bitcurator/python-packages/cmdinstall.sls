cmdinstall:
  cmd.run:
    - name: |
        pip3 install analyzemft
        pip3 install argparse
        pip3 install brunnhilde
        pip3 install configobj
        pip3 install construct
        pip3 install docopt
        pip3 install et_xmlfile
        pip3 install jdcal
        pip3 install lxml
        pip3 install matplotlib
        pip3 install opf-fido
        pip3 install pefile
        pip3 install PyICU
        pip3 install python-dateutil
        pip3 install python-evtx
        pip3 install pythong-registry
        pip3 install setuptools
        pip3 install six
        pip3 install unicodecsv
        pip3 install wheel
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
