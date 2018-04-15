cmdinstall:
  cmd.run:
    - name: |
        pip install analyzemft
        pip install argparse
        pip install brunnhilde
        pip install configobj
        pip install construct
        pip install docopt
        pip install et_xmlfile
        pip install jdcal
        pip install lxml
        pip install matplotlib
        pip install opf-fido
        pip install pefile
        pip install python-dateutil
        pip install python-evtx
        pip install pythong-registry
        pip install setuptools
        pip install six
        pip install unicodecsv
        pip install wheel
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
