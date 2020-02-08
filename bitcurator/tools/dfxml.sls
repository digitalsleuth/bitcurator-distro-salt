dfxml:
  cmd.run:
    - name: |
        git clone https://github.com/simsong/dfxml /usr/share/dfxml
        cd /usr/share/dfxml
        echo "Cloned dfxml" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> $HOME/bitcurator-install.log 2>&1
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/share/dfxml/python/identify_filenames.py
