
install:
	-rm dist/*
	-sudo rm /usr/bin/caelestia
	-sudo rm -rf /usr/lib/python*/site-packages/caelestia*
	#python -m build --wheel
	hatch build
	sudo python3 -m installer dist/*.whl
	-sudo cp completions/caelestia.fish /usr/share/fish/vendor_completions.d/caelestia.fish

