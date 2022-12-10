<h1 align='center'>Blog app using Flask framework</h1>

![files](https://img.shields.io/github/directory-file-count/omnathmandal/blog-app)
![repo size](https://img.shields.io/github/repo-size/omnathmandal/blog-app)

![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)![Jinja](https://img.shields.io/badge/jinja-white.svg?style=for-the-badge&logo=jinja&logoColor=black)![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white)![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)![CMake](https://img.shields.io/badge/CMake-%23008FBA.svg?style=for-the-badge&logo=cmake&logoColor=white)![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)

---
# From Dockerfile

```bash

# building the image from the Dockerfile
$ docker build -t your_dockerhub_username/your-image .

# To check the docker images
$ docker images

# to run the container in deatached mode where machine port 8000 = docker port 8000
$ docker run --name your-image -p 8000:8000 -d your_dockerhub_username/your-image

# to run the container in foreground mode
$ docker run --name your-image -p 8000:8000 your_dockerhub_username/your-image

# to visit the site goto localhost:8080
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
