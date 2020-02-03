bagitpython:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/LibraryOfCongress/bagit-python
        cd bagit-python
        echo "The Git HEAD is `git rev-parse HEAD`." >> $HOME/bitcurator-install.log 2>&1
        python2.7 setup.py install
        cd /tmp
        rm -rf bagit-python
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/bagit.py
