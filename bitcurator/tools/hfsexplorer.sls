hfsexplorer:
  cmd.run:
    - name: |
        mkdir /usr/share/hfsexplorer
        cd /usr/share/hfsexplorer
        cp /srv/salt/bitcurator/externals/hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip /usr/share/hfsexplorer
        unzip hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip
        rm hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip
        ldconfig
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000

