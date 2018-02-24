setnoclobber:
  cmd.run:
    - name: |
        if ! grep -i "set -o noclobber" /home/bcadmin/.bashrc > /dev/null 2>&1
        then
                echo "set -o noclobber" >> /home/bcadmin/.bashrc
        fi
        if ! grep -i "set -o noclobber" /root/.bashrc > /dev/null 2>&1
        then
                echo "set -o noclobber" >> /root/.bashrc
        fi
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
