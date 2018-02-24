include:
  - bitcurator.env.desktop-folders
  - bitcurator.env.dot-local
  - bitcurator.env.launcher-trust
  - bitcurator.env.etc
  - bitcurator.env.lib
  - bitcurator.env.mediasymlink
  - bitcurator.env.mountwinalias
  - bitcurator.env.setnoclobber
  - bitcurator.env.udisks2floppy.sls
  - bitcurator.env.usr
  - bitcurator.env.vimrc
  - bitcurator.env.vim-support

bitcurator-env:
  test.nop:
    - name: bitcurator-env
    - require:
      - sls: bitcurator.env.desktop-folders
      - sls: bitcurator.env.dot-local
      - sls: bitcurator.env.launcher-trust
      - sls: bitcurator.env.etc
      - sls: bitcurator.env.lib
      - sls: bitcurator.env.mediasymlink
      - sls: bitcurator.env.mountwinalias
      - sls: bitcurator.env.setnoclobber
      - sls: bitcurator.env.udisks2floppy.sls
      - sls: bitcurator.env.usr
      - sls: bitcurator.env.vimrc
      - sls: bitcurator.env.vim-support
