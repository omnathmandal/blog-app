## Installing make for windows
## https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows

.DEFAULT_GOAL = install

# for installing dependencies
install : requirements.txt
	@python -m pip install --upgrade pip
	@python -m pip install -r requirements.txt

# for executing the app
run: install
	@ python run.py

# for generating key
key: 
	@ python generate.py