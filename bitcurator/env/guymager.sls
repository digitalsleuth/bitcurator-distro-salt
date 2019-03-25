guymager_lang:
	cmd.run:
	 - name: |
		cp /tmp/salt/bitcurator/env/guymager/guymager_en-CH.qm /usr/share/guymager/guymager_en-CH.qm				
		cp /tmp/salt/bitcurator/env/guymager/local.cfg /etc/guymager/local.cfg
	- cwd: /tmp
	- shell: /bin/bash
	- timeout: 12000

