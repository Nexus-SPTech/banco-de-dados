use dbnexus;

-- Criação da tabela aluno
CREATE TABLE IF NOT EXISTS aluno (
    idAluno INT AUTO_INCREMENT PRIMARY KEY,
	instituicao VARCHAR(45) NOT NULL,
    serie VARCHAR(45) NOT NULL,
    periodo VARCHAR(45) NOT NULL
);

-- Criação da tabela disciplina
CREATE TABLE IF NOT EXISTS disciplina (
    idDisciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) UNIQUE NOT NULL 
);

-- Criação da tabela notas_aluno
CREATE TABLE IF NOT EXISTS nota_aluno (
    fkAluno INT,
    fkDisciplina INT,
    nota VARCHAR(45) NOT NULL,
    PRIMARY KEY (fkAluno, fkDisciplina),
    FOREIGN KEY (fkAluno) REFERENCES aluno(idAluno),
    FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

drop table disciplina;
drop table aluno;
drop table nota_aluno;