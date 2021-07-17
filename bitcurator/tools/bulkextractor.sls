bulkextractor:
  cmd.run:
    - name: |
        git clone https://github.com/simsong/bulk_extractor /tmp/bulk_extractor
        cd /tmp/bulk_extractor
        git checkout 674867b3416e210b76ca048242f04d96a4e2bbaf >> /var/log/bitcurator-install.log 2>&1
        echo "Cloned bulk_extractor and checked out a pre-1.6.0 commit" >> /var/log/bitcurator-install.log 2>&1
        echo "The Git HEAD is `git rev-parse HEAD`." >> /var/log/bitcurator-install.log 2>&1
        chmod 755 bootstrap.sh
        ./bootstrap.sh >> /var/log/bitcurator-install.log 2>&1
        ./configure --enable-lightgrep --disable-hashdb >> /var/log/bitcurator-install.log 2>&1
        make >> /var/log/bitcurator-install.log 2>&1
        make install >> /var/log/bitcurator-install.log 2>&1
        ldconfig
        cp -r src/dfxml /usr/share
        cp python/identify_filenames.py /usr/share/dfxml/python
        chmod 755 /usr/share/dfxml/python/identify_filenames.py
        cp python/bulk_extractor_reader.py /usr/share/dfxml/python
        chmod 755 /usr/share/dfxml/python/bulk_extractor_reader.py
        cd /tmp
        rm -rf bulk_extractor
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 12000
    - unless: test -x /usr/local/bin/bulk_extractor
