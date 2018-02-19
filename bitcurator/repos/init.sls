include:
  - bitcurator.repos.ubuntu-multiverse
  - bitcurator.repos.ubuntu-universe
  - bitcurator.repos.ubuntu-tweak


bitcurator-repos:
  test.nop:
    - name: bitcurator-repos
    - require:
      - sls: bitcurator.repos.ubuntu-multiverse
      - sls: bitcurator.repos.ubuntu-universe
      - sls: bitcurator.repos.ubuntu-tweak