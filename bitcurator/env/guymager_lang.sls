guymager_lang:
	cmd.run:
	 - name: |
		cp /tmp/salt/bitcurator/externals/guymager_en-CH.qm /usr/share/guymager/guymager_en-CH.qm				sed -i "s/Language='auto'/Language='en-CH'/" /etc/guymager/guymager.cfg
	- cwd: /tmp
	- shell: /bin/bash
	- timeout: 12000

