CREATE DATABASE dbnexus;

USE dbnexus;

DROP TABLE IF EXISTS instituicao;
DROP TABLE IF EXISTS turma;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS notas_turma;

-- Criação da tabela 'instituicao'
CREATE TABLE IF NOT EXISTS instituicao (
    idInstituicao INT AUTO_INCREMENT PRIMARY KEY,
    nome_instituicao VARCHAR(45) NOT NULL,
    nome_departamento VARCHAR(45)
);

-- Criação da tabela 'turma'
CREATE TABLE IF NOT EXISTS turma (
    idTurma INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(45),
    periodo VARCHAR(45),
    fkInstituicao INT,
    FOREIGN KEY (fkInstituicao) REFERENCES instituicao(idInstituicao)
);

-- Criação da tabela 'disciplina'
CREATE TABLE IF NOT EXISTS disciplina (
    idDisc INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(45)
);

-- Criação da tabela 'notas_turma'
CREATE TABLE IF NOT EXISTS  notas_turma (
    fkTurma INT,
    fkDisc INT,
    media VARCHAR(45),
    PRIMARY KEY (fkTurma, fkDisc),
    FOREIGN KEY (fkDisc) REFERENCES disciplina(idDisc)
);