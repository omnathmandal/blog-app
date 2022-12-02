<h1 align='center'>Blog app using Flask framework</h1>

---
## STEP 1
**generating a secret token :**

>**note :**          
> It need to be run only once to create a `SECRET.key` file

```bash
# generates a random 16 bytes hexadecimal token
$ python generate.py
```
<h3 align=center>OR</h3>

using the makefile :
```bash
# you can also use the Makefile to create the key 
$ make key
```
## STEP 2

**Installing prerequisites for using the app:**
```bash
# using pip
$ python -m pip install -r requirements.txt

# using pip (For development)
$ python -m pip install -r dev-requirements.txt

# using Makefile
$ make 

# using poetry
$ poetry install --without dev 

# using poetry (For development)
$ poetry install
```

## STEP 3 
**running the app :**
```bash
# using python with debug mode on
$ python app.py

# using Makefile
$ make run

# using flask in debug mode
$ python -m flask --app app --debug run

# using flask without debug mode
$ python -m flask --app app run

# poetry
$ poetry run run.py
```
---
