{% set user = salt['pillar.get']('bitcurator_user') %}

launcher-trust:
  cmd.run:
    - name: |
        gio set /home/{{ user }}/Desktop/Additional\ Tools/antiword.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/bcreport.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/bless.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/clamtk.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/fido.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/fiwalk.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/ghex.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/gtkhash\:gtkhash.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/hardinfo.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/hashrat.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/hfs.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/identfile.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/nwipe.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/readpst.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Additional\ Tools/vlc.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/BEViewer.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/bcdat.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/bcgui.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/bcmnt.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/brunnhilde.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/disktype.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/fiwalk.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/hashdb.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/md5deep.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/nsrllookup.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/photorec.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/regripper.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/sdhash.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/ssdeep.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Forensics\ and\ Reporting/testdisk.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/brasero.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/cdrdao.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/clonezilla.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/dcfldd.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/dd.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/ddrescue.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/dumpfloppy.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/ewfacquire.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Imaging\ and\ Recovery/guymager.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Packaging\ and\ Transfer/bagit-python.desktop "metadata::trusted" yes
        gio set /home/{{ user }}/Desktop/Packaging\ and\ Transfer/grsync.desktop "metadata::trusted" yes
    - user: {{ user }}
    - group: {{ user }}
    - shell: /bin/bash
    - timeout: 12000
