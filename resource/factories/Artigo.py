from faker import Faker
faker = Faker()

def artigo():
    return {
  "title": faker.address(),
  "resume": "Nam vulputate dapib mé, cursus qui nteragi no mé, cursus quinteragi no mé, cursus qui",
  "text": "teste stringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringst",
  "slug": faker.name(),
  "User": {
    "uuid": "13955b53-1f6b-494f-ae95-6b1a81d8a83f",
    "username": "Fulano"
  }
}


def artigo_atualizacao():
    return {
  "title": "EDITLofe djaisjhi qnaush qwdm a9sdjqje aksdqiw dajsdi",
  "resume": "EDITNam vulputate dapib mé, cursus qui nteragi no mé, cursus quinteragi no mé, cursus qui",
  "text": "teste EDIT stringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringst",
  "slug": faker.name(),
  "User": {
    "uuid": "13955b53-1f6b-494f-ae95-6b1a81d8a83f",
    "username": "Fulano"
  }
}

def artigo_atualizacao_invalido():
    return {
  "title": "EDIT!@#$@#!$@# $@#$@#$@ #$@ @#$@#$@#$@# @#$@#$@#$",
  "resume": "EDIT!@#$@#!$@# $@#$@#$@ #$@ @#$@#$@#$@# @#$@#$@#$!@#$@#!$@# $@#$@#$@",
  "text": "teste EDIT !@#$@#!$@# $@#$@#$@ #$@ @#$@#$@#$@# @#$@#$@#$ingstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringst",
  "slug": "!@#$@#!$@# $@#$@#$@",
  "User": {
    "uuid": "13955b53-1f6b-494f-ae95-6b1a81d8a83f",
    "username": "Fulano"
  }
}

def artigo_atualizacao_nulo():
    return {
  "title": "",
  "resume": "",
  "text": "",
  "slug": "",
  "User": {
    "uuid": "",
    "username": ""
  }
}

def artigo_titulo_invalido():
    return {
  "title": "!@#$@#!$@# $@#$@#$@ #$@ @#$@#$@#$@# @#$@#$@#$",
  "resume": "Nam vulputate dapib mé, cursus qui nteragi no mé, cursus quinteragi no mé, cursus qui",
  "text": "teste stringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringst",
  "slug": faker.name(),
  "User": {
    "uuid": "13955b53-1f6b-494f-ae95-6b1a81d8a83f",
    "username": "Fulano"
  }
}


def artigo_titulo_nulo():
    return {
  "title": "",
  "resume": "Nam vulputate dapib mé, cursus qui nteragi no mé, cursus quinteragi no mé, cursus qui",
  "text": "teste stringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringstringst",
  "slug": faker.name(),
  "User": {
    "uuid": "13955b53-1f6b-494f-ae95-6b1a81d8a83f",
    "username": "Fulano"
  }
}