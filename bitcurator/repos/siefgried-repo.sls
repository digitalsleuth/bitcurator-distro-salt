siegfried-repo:
  cmd.run:
    - name: |
        wget -qO - https://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
        echo "deb http://dl.bintray.com/siegfried/debian wheezy main" | sudo tee -a /etc/apt/sources.list
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
