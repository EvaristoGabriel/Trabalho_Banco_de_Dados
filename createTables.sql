CREATE TABLE classe(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL UNIQUE,
    premio VARCHAR(50) NOT NULL
);

CREATE TABLE regiao(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE cidade(
    id SERIAL PRIMARY KEY,
    id_Regiao VARCHAR(50) NOT NULL REFERENCES regiao(nome),
    Nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE insignia(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE mochila(
    id SERIAL PRIMARY KEY
);

CREATE TABLE utilitario(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL REFERENCES mochila(id),
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER 
);

CREATE TABLE seguravel(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL REFERENCES mochila(id),
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER
);

CREATE TABLE medicinal(
    id SERIAL PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    id_Mochila INTEGER NOT NULL REFERENCES mochila(id),
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Quantidade INTEGER
);

CREATE TABLE habilidade(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL UNIQUE,
    Descricao VARCHAR(500) NOT NULL
);

CREATE TABLE nature(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(10) NOT NULL,
    Aumenta VARCHAR(20),
    Diminui VARCHAR(20)
);

CREATE TABLE tipo(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_fraqueza (
    id_Forte INTEGER,
    id_Fraco INTEGER,
    FOREIGN KEY (id_Forte) REFERENCES tipo(id),
    FOREIGN KEY (id_Fraco) REFERENCES tipo(id)
);

CREATE TABLE tipo_efetivo (
    id_Atacante INTEGER,
    id_Efetivo INTEGER,
    FOREIGN KEY (id_Atacante) REFERENCES tipo(id),
    FOREIGN KEY (id_Efetivo) REFERENCES tipo(id)
);

CREATE TABLE ataque(
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Accuracy INTEGER,
    Power INTEGER,
    id_Tipo INTEGER NOT NULL REFERENCES tipo(id),
    Categoria VARCHAR(50),
    PP INTEGER,
    TM VARCHAR(10),
    Descricao VARCHAR(200)
);

CREATE TABLE treinador(
    url VARCHAR(255) NOT NULL,
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_Mochila INTEGER NOT NULL REFERENCES mochila(id),
    id_Cidade VARCHAR(50) NOT NULL REFERENCES cidade(nome),
    id_Classe VARCHAR(50) REFERENCES classe(nome)
);

CREATE TABLE ginasio(
    id SERIAL PRIMARY KEY,
    id_Cidade VARCHAR(50) NOT NULL REFERENCES cidade(nome),
    id_Treinador INTEGER NOT NULL REFERENCES treinador(id),
    id_Insignia VARCHAR(50) NOT NULL REFERENCES insignia(nome)
);

CREATE TABLE equipe(
    id SERIAL PRIMARY KEY,
    id_Treinador INTEGER NOT NULL REFERENCES treinador(id)
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
    id_Habilidade INTEGER NOT NULL REFERENCES habilidade(id),
    id_Equipe INTEGER NOT NULL REFERENCES equipe(id),
    id_Nature INTEGER NOT NULL REFERENCES nature(id),
    UNIQUE (Numero_Pokedex, Nome)
);


CREATE TABLE pokedex(
    Numero_Pokemon INTEGER NOT NULL,
    Nome_Pokemon VARCHAR(50) NOT NULL,
    PRIMARY KEY(Numero_Pokemon,Nome_Pokemon),
    FOREIGN KEY (Numero_Pokemon, Nome_Pokemon) REFERENCES pokemon(Numero_Pokedex, Nome)
);

CREATE TABLE treinador_insignia(
    id_Treinador INTEGER NOT NULL REFERENCES treinador(id),
    id_Insignia INTEGER NOT NULL REFERENCES insignia(id)
);

CREATE TABLE pokemon_tipo(
    id_Pokemon INTEGER NOT NULL REFERENCES pokemon(id),
    id_Tipo VARCHAR(50) NOT NULL REFERENCES tipo(nome)
);

CREATE TABLE pokemon_ataque(
    id_Pokemon INTEGER NOT NULL REFERENCES pokemon(id),
    id_Ataque INTEGER NOT NULL REFERENCES ataque(id)
);