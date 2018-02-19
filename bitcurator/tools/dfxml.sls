dfxml:
  cmd.run:
    - name: |
        git clone https://github.com/simsong/dfxml /usr/share/dfxml
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/share/dfxml/python/identify_filenames.py