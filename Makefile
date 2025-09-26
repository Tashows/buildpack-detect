install:
	sudo dokku plugin:uninstall buildpack-detect || true
	sudo rm -rf /var/lib/dokku/plugins/available/buildpack-detect || true
	sudo cp -r . /var/lib/dokku/plugins/available/buildpack-detect
	sudo dokku plugin:enable buildpack-detect
