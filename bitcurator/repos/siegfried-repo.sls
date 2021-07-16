siegfried-repo:
  cmd.run:
    - name: |
        apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 20F802FE798E6857
        add-apt-repository "deb https://www.itforarchivists.com/ buster main"
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
