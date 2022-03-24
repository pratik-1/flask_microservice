install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702,W0611 app.py

test:
	python3 -m pytest -vv --cov=app test_app.py

all: install lint test
