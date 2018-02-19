pyexiftoolgui:
  cmd.run:
    - name: |
        cd /tmp
        git clone https://github.com/hvdwolf/pyExifToolGUI
        cd pyExifToolGUI
        ./install_remove.py install
        if [ ! -d $HOME/.pyexiftoolgui ]; then
            mkdir -p $HOME/.pyexiftoolgui
        fi
        ldconfig
        cd /tmp
        rm -rf pyExifToolGUI
        chown bcadmin /home/bcadmin/.pyexiftoolgui
        chgrp bcadmin /home/bcadmin/.pyexiftoolgui
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/bin/pyexiftoolgui
