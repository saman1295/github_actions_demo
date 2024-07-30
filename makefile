#makefile

install:
	pip3 install --upgrade pip &&\
			pip3 install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable =R,C script.py

test:
	python -m pytest test/test_*.py

all: install lint test format 