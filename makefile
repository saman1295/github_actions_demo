#makefile

install:
	pip3 install --upgrade pip &&\
			pip3 install -r requirements.txt

format:
	black *.py

lint:
	pylint tests/script.py

test:
	python -m pytest tests/test_*.py

all: install lint test format 