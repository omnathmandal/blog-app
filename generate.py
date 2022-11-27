import secrets

with open("SECRET.key", "w") as key:
    key.write(secrets.token_hex(16))
