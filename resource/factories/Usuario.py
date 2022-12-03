from faker import Faker
faker = Faker()


def usuario():
    return {
    "username": faker.name(),
    "password": faker.password()
    }


def usuario_username_invalido():
    return {
    "username": "!@#!%@%@$¨#%¨%#&%#",
    "password": "123456789"
    }

def usuario_username_nulo():
    return {
    "username": "",
    "password": "123456789"
    }

def usuario_password():
    return {
    "username": faker.name(),
    "password": faker.password()
    }

def usuario_password_invalido():
    return {
    "username": faker.name(),
    "password": "!@$!*@)(&%$(!$&(!$*&!$(@*!@#)!@*$&@#$*(!*@#&**)("
    }

def usuario_password_nulo():
    return {
    "username": faker.name(),
    "password": ""
    }


def usuario_atualizacao():
    return {
    "username": "FulanoEdit",
    "password": "123456789"
    }

    
def usuario_atualizacao_invalido():
    return {
    "username": "!@!*$&*!(&(",
    "password": "@#*$@*(#&$"
    }