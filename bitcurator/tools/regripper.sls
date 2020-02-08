regripper:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/keydet89/RegRipper2.8
        echo "Cloned regripper" >> /var/log/bitcurator-install.log 2>&1
        mv RegRipper2.8 /usr/share/regripper
        cp -r /usr/share/regripper/plugins /usr/share/perl5
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
