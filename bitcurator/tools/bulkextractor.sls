bulkextractor:
  cmd.run:
    - name: |
        git clone --recursive https://github.com/simsong/bulk_extractor /tmp/bulk_extractor
        cd /tmp/bulk_extractor
        chmod 755 bootstrap.sh
        ./bootstrap.sh
        ./configure --enable-lightgrep --disable-hashdb
        make -s
        make install
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
