# Dockerfile for running the blog-app
FROM python:3.11.0-slim

# create a directory blog-app
RUN mkdir /blog-app

# setting it as working directory
WORKDIR /blog-app

# installing poetry using pip
RUN python3 -m pip install poetry

# changing poetry config
# so that it doesn't create virtualenvs
RUN poetry config virtualenvs.create false

# copying poetry.lock and pyproject.toml
COPY poetry.lock pyproject.toml /blog-app/

# copying all the source folders and files
COPY . .

# installing dependencies without dev dependencies
RUN poetry install --no-interaction --without dev

# generating the SECRET.key
RUN python3 generate.py

# exposing port=8000 for use
EXPOSE 8000

# running the app
CMD ["poetry", "run", "python3", "-m", "flask","--app", "app", "run", "--host=0.0.0.0", "--port=8000"]
