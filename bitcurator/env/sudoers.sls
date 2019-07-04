{% set user = salt['pillar.get']('bitcurator_user') %}

sudoers:
    file.append:
        - name: /etc/sudoers
        - text:
          - "{{ user }}    ALL=(ALL)	NOPASSWD: ALL"



