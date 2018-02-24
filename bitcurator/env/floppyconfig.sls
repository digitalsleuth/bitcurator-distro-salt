floppyconfig:
  cmd.run:
    - name: |
        sed -i 's/{ID_DRIVE_FLOPPY}="1"/{ID_DRIVE_FLOPPY}="0"/' /lib/udev/rules.d/80-udisks2.rules
        sed -i 's/{ID_DRIVE_FLOPPY_ZIP}="1"/{ID_DRIVE_FLOPPY_ZIP}="0"/' /lib/udev/rules.d/80-udisks2.rules
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
