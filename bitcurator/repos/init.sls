include:
  - bitcurator.repos.ubuntu-multiverse
  - bitcurator.repos.ubuntu-universe
  - bitcurator.repos.ubuntu-tweak
  - bitcurator.repos.siegfried-repo
  - bitcurator.repos.guymager-repo


bitcurator-repos:
  test.nop:
    - name: bitcurator-repos
    - require:
      - sls: bitcurator.repos.ubuntu-multiverse
      - sls: bitcurator.repos.ubuntu-universe
      - sls: bitcurator.repos.ubuntu-tweak
      - sls: bitcurator.repos.siegfried-repo
      - sls: bitcurator.repos.guymager-repo