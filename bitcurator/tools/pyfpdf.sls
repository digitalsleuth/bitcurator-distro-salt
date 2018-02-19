pyfpdf:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/reingart/pyfpdf.git
        cd pyfpdf
        python3 setup.py install
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
