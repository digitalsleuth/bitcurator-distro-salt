guymager-config:
  cmd.run:
    - name: |
        cp /srv/salt/bitcurator/env/guymager-config/guymager_en-CH.qm /usr/share/guymager/guymager_en-CH.qm
        cp /srv/salt/bitcurator/env/guymager-config/local.cfg /etc/guymager/local.cfg
    - cwd: /srv
    - shell: /bin/bash
    - timeout: 12000
