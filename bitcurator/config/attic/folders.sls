{%- set user = salt['pillar.get']('bitcurator_user', 'bcadmin') -%}

include:
  - .user

{% for n in range(1, 6) %}
/mnt/windows_mount{{n}}:
  file.directory:
    - user: root
    - group: root
    - makedirs: true
{% endfor %}
