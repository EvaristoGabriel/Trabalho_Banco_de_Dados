CREATE TABLE mochila(
    id SERIAL PRIMARY KEY
);
CREATE TABLE utilitario(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL,
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER 
);
CREATE TABLE seguravel(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL,
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER
);
CREATE TABLE medicinal(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL,
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER
);
CREATE TABLE treinador(
    url VARCHAR(255) NOT NULL,
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_Mochila VARCHAR(50) NOT NULL,
    id_Cidade VARCHAR(50) NOT NULL,
    id_Classe VARCHAR(50)
);
CREATE TABLE pokemon(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Apelido VARCHAR(50) NOT NULL,
    Numero_Pokedex INTEGER NOT NULL,
    Ataque_Fisico INTEGER NOT NULL,
    Ataque_Special INTEGER NOT NULL,
    Defesa_Fisico INTEGER NOT NULL,
    Defesa_Special INTEGER NOT NULL,
    Speed INTEGER NOT NULL,
    Nivel INTEGER NOT NULL,
    HP INTEGER NOT NULL,
    Experiencia INTEGER NOT NULL,
    Status VARCHAR(50) NOT NULL,
    id_Habilidade INTEGER NOT NULL,
    id_Equipe INTEGER NOT NULL,
    id_Nature VARCHAR(10) NOT NULL
);