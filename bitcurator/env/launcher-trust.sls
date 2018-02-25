launcher-trust:
  cmd.run:
    - name: |
        gio set /home/bcadmin/Desktop/Additional\ Tools/antiword.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/bcreport.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/bless.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/clamtk.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/fido.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/fiwalk.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/ghex.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/gtkhash\:gtkhash.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/hardinfo.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/hfs.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/identfile.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/nwipe.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/readpst.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/recoll-searchgui.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Additional\ Tools/vlc.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/BEViewer.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/bcdat.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/bcgui.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/bcmnt.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/brunnhilde.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/disktype.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/fiwalk.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/fslint.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/hashdb.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/md5deep.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/photorec.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/pyexiftoolgui.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/regripper.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/sdhash.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/siegfried.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/ssdeep.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Forensics\ and\ Reporting/testdisk.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/cdrdao.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/clonezilla.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/dcfldd.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/dd.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/ddrescue.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/dumpfloppy.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/ewfacquire.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Imaging\ and\ Recovery/guymager.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Packaging\ and\ Transfer/bagit-python.desktop "metadata::trusted" yes
        gio set /home/bcadmin/Desktop/Packaging\ and\ Transfer/grsync.desktop "metadata::trusted" yes
    - user: bcadmin
    - group: bcadmin
    - shell: /bin/bash
    - timeout: 12000
