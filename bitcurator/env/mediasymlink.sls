mediasymlink:
  cmd.run:
    - name: |
        cd /home/bcadmin/Desktop
        sudo -u bcadmin ln -s /media Shared\ Folders\ and\ Media
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
