pyfpdf:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/reingart/pyfpdf.git
        cd pyfpdf
        echo "The Git HEAD is `git rev-parse HEAD`." >> $HOME/bitcurator-install.log 2>&1
        python3 setup.py install
        cd /tmp
        rm -rf pyfpdf
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
