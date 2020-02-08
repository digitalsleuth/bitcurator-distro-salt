bagitpython:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/LibraryOfCongress/bagit-python
        cd bagit-python
        echo "Cloned bagit-python" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        python3 setup.py install >> /var/log/bitcurator-install.log 2>&1
        cd /tmp
        rm -rf bagit-python
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/bagit.py
