{% set user = salt['pillar.get']('bitcurator_user') %}

mediasymlink:
  cmd.run:
    - name: |
        cd /home/{{ user }}/Desktop
        sudo -u {{ user }} ln -s /media Shared\ Folders\ and\ Media
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
