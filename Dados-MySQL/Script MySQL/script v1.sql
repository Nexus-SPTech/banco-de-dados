CREATE DATABASE dbnexus;

USE dbnexus;

-- Criação da tabela 'instituicao'
CREATE TABLE instituicao (
    idInstituicao INT AUTO_INCREMENT PRIMARY KEY,
    nome_instituicao VARCHAR(45) NOT NULL,
    nome_departamento VARCHAR(45),
    turma_idTurma INT,
    FOREIGN KEY (turma_idTurma) REFERENCES turma(idTurma)
);

-- Criação da tabela 'turma'
CREATE TABLE turma (
    idTurma INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(45),
    periodo VARCHAR(45)
);

-- Criação da tabela 'disciplina'
CREATE TABLE disciplina (
    idDisc INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(45)
);

-- Criação da tabela 'notas_turma'
CREATE TABLE notas_turma (
    dkAluno INT,
    fkDisc INT,
    media VARCHAR(45),
    PRIMARY KEY (dkAluno, fkDisc),
    FOREIGN KEY (fkDisc) REFERENCES disciplina(idDisc)
);