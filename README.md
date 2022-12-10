<h1 align='center'>Blog app using Flask framework</h1>

---
# From Dockerfile

```bash

# building the image from the Dockerfile
$ docker build -t your_dockerhub_username/your-image .

# To check the docker images
$ docker images

# to check running containers
$ docker run --name your-image -p 8000:8000 -d your_dockerhub_username/your-image

```

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

## Project Structure :
```
blog-app
|   .gitignore
|   .dockerignore
|   Makefile
|   Dockerfile
|   requirements.txt
|   pyproject.toml
|   poetry.lock
|   app.py
|   LICENSE
|   generate.py
|   README.md
|   SECRET.key
|   dev-requirements.txt
|   
+---blogapp
    |   __init__.py
    |   config.py
    |   models.py
    |   
    +---templates
    |   |   layout.html
    |   |   account.html
    |   |   reset_token.html
    |   |   user_posts.html
    |   |   about.html
    |   |   create_post.html
    |   |   home.html
    |   |   login.html
    |   |   post.html
    |   |   register.html
    |   |   reset_request.html
    |   |   
    |   \---errors
    |           403.html
    |           404.html
    |           500.html
    |           
    +---static
    |   |   main.css
    |   |   favicon.ico
    |   |   
    |   \---profile_pic
    |           default.png
    |           
    +---errors
    |       __init__.py
    |       handlers.py
    |           
    +---main
    |       __init__.py
    |       routes.py
    |       
    +---users
    |       __init__.py
    |       forms.py
    |       routes.py
    |       utils.py
    |           
    \---posts
            __init__.py
            forms.py
            routes.py
            
```
---
