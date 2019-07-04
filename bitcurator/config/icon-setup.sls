{% set user = salt['pillar.get']('bitcurator_user') %}

icon-setup:
  cmd.run:
    - name: |
        gsettings set org.gnome.desktop.background show-desktop-icons true
        gsettings set org.gnome.nautilus.desktop home-icon-visible true
        gsettings set org.gnome.nautilus.desktop trash-icon-visible true
        gsettings set org.gnome.nautilus.desktop network-icon-visible true
    - user: {{ user }}
    - group: {{ user }}
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
