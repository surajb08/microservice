## The Makefile includes instructions on environment setup
# Create and activate a virtual environment
# Install dependencies in requirements.txt

setup:
	# Create python virtualenv & source it
	venv venv1
	. venv1/bin/activate

install: setup
	# This should be run from inside a virtual environment
	# Install packages from pip, use requirements.txt
	. venv1/bin/activate && pip install -r requirements.txt

docker-build:
	# add commands required
	docker build -t suraj08/microservice:v1 .

docker-push:
	# add commands required
	docker push suraj08/microservice:v1
