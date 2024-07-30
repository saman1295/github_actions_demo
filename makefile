#makefile

install:
	pip3 install --upgrade pip &&\
			pip3 install -r requirements.txt

format:
	black *.py

lint:
	pylint test/script.py

test:
	python -m pytest test/test_*.py

all: install lint test format 