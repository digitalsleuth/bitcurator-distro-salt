brunnhilde-gui:
  cmd.run:
    - name: |
        git clone https://github.com/tw4l/brunnhilde-gui /tmp/brunnhilde-gui
        cd /tmp/brunnhilde-gui
        echo "Cloned brunnhilde-gui" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        mkdir /usr/share/brunnhilde-gui
        mv design.py /usr/share/brunnhilde-gui
        mv design.ui /usr/share/brunnhilde-gui
        mv icon.png /usr/share/brunnhilde-gui
        mv launch /usr/share/brunnhilde-gui
        mv main.py /usr/share/brunnhilde-gui
        chmod u+x /usr/share/brunnhilde-gui/launch
        cd /tmp
        rm -rf brunnhilde-gui
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
