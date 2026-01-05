
build:
	-rm dist/*
	python -m build --wheel
	-sudo rm /usr/bin/caelestia
	-sudo rm -rf /usr/lib/python3.13/site-packages/caelestia*
	sudo python -m installer dist/*.whl
	-sudo cp completions/caelestia.fish /usr/share/fish/vendor_completions.d/caelestia.fish

