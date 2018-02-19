bagitpython:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/LibraryOfCongress/bagit-python
        cd bagit-python
        pip install bagit
        cd /tmp
        rm -rf bagit-python
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/bagit.py
