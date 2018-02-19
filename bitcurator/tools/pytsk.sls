pytsk:
  cmd.run:
    - name: |
        cd /tmp
        wget -q https://github.com/py4n6/pytsk/releases/download/20160721/pytsk3-20160721.tar.gz
        tar -zxf pytsk3-20160721.tar.gz >> $HOME/bitcurator-install.log 2>&1
        cd pytsk3-20160721
        python3 setup.py build >> $HOME/bitcurator-install.log 2>&1
        python3 setup.py install >> $HOME/bitcurator-install.log 2>&1
        cd /tmp
        rm -rf pytsk3-20160721
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
