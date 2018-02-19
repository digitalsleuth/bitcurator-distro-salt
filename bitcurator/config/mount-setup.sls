mount-setup:
  cmd.run:
    - name: |
        gsettings set org.gnome.nautilus.desktop volumes-visible true
        gsettings set org.gnome.desktop.media-handling automount false
        gsettings set org.gnome.desktop.media-handling automount-open false
    - user: bcadmin
    - group: bcadmin
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
