CREATE TABLE usuario(

    idusuario SERIAL PRIMARY KEY,

    nome VARCHAR(150) NOT NULL,

    email VARCHAR(100) NOT NULL UNIQUE,

    senha VARCHAR(100) NOT NULL

);

CREATE TABLE servico(

    idservico SERIAL PRIMARY KEY,

    nome VARCHAR(150) NOT NULL,

    descricao VARCHAR(500) NOT NULL,

    valor DECIMAL(10,2) NOT NULL

);


CREATE TABLE contato(

    idcontato SERIAL PRIMARY KEY,

    nome VARCHAR(150) NOT NULL,

    email VARCHAR(100) NOT NULL,

    telefone VARCHAR(20),

    mensagem VARCHAR(500) NOT NULL

);


CREATE TABLE avaliacao(

    idavaliacao SERIAL PRIMARY KEY,

    nome VARCHAR(150) NOT NULL,

    telefone VARCHAR(20),

    nota INTEGER NOT NULL CHECK (nota BETWEEN 1 AND 5),

    comentario VARCHAR(500) NOT NULL,

    dataavaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);