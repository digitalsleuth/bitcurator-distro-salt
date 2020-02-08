pyfpdf:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/reingart/pyfpdf.git
        echo "Cloned pyfpdf" >> /var/log/bitcurator-install.log 2>&1
        cd pyfpdf
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        python3 setup.py install >> /var/log/bitcurator-install.log 2>&1
        cd /tmp
        rm -rf pyfpdf
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
