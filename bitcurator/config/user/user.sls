{% set user = salt['pillar.get']('bitcurator_user') %}
{% set all_users = salt['user.list_users']() %}
{% if user in all_users %}
bitcurator-user-{{ user }}:
  user.present:
    - name: {{ user }}
    - home: /home/{{ user }}
{% else %}
bitcurator-user-{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: BitCurator
    - shell: /bin/bash
    - home: /home/{{ user }}
    - password: bcadmin
    - gid_from_name: True
{% endif %}

