lint:
	pycodestyle --ignore E501,E712,E402 CTFd/ tests/
	flake8 --ignore E501,E712,E402 CTFd/ tests/

test:
	pytest --disable-warnings
	bandit -r CTFd

serve:
	python serve.py