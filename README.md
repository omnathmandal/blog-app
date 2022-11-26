<h1 align='center'>Blog app using Flask framework</h1>

---
## STEP 1
**generating a secret token :**

>**note :**          
> type the following command in the interactive python mode.
>
>you can enter into interactive mode by typing python or python3 in your cli or command line 

```python
# generates a random 16 bytes hexadecimal token
>>> import secrets
>>> secrets.token_hex(16)
```

copy the token and paste it in the  `SECRET_KEY.txt` file. 

>**please make sure to put the key in the first line without whitespace** 

## STEP 2

**Installing prequisities for using the app:**
```bash
# using pip
python -m pip install -r requirements.txt

# using poetry
poetry install --without dev 

# using poetry (For development)
poetry install
```

## STEP 3 
**running the app :**
```bash
# using python with debug mode on
python run.py

# using flask in debug mode
python -m flask --app run --debug run

# using flask without debug mode
python -m flask --app run run

# poetry
poetry run run.py
```
---
