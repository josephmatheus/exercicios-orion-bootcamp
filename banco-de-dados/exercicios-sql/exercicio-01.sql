-- Descrição
-- Você criará as tabelas, definirá suas colunas e chaves, e inserirá alguns dados de teste.

-- 1. Criar a tabela cursos que: 
CREATE TABLE cursos (
--      - tenha as colunas id (chave primária, numérico) e nome_curso (texto).
    id SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100)
);

-- 2. Criar a tabela alunos que:
CREATE TABLE alunos (
--     - Tenha as colunas id (Chave Primária), nome (Texto), email (Texto), curso_id (numérico).
    id SERIAL PRIMARY KEY,
    nome TEXT,
    email TEXT,
    curso_id INT, 
--     - Configure `curso_id` como uma Chave Estrangeira (FK) que se relaciona com o `id` da tabela cursos.
    CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES cursos (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 3. Inserir dados
--     - Insira 2-3 cursos na tabela cursos.
INSERT INTO cursos (nome_curso) VALUES 
('Orion Bootcamp 2025'),
('Análise e Desenvolvimento de Sistemas'),
('Desenvolvimento Web');
--     - Insira 3-4 alunos na tabela alunos, relacionando-os com os cursos que você criou.
INSERT INTO alunos (nome, email, curso_id) VALUES
('Joseph', 'joseph@email.com', 1),
('Matheus', 'matheus@email.com', 2),
('Araújo', 'araujo@email.com', 3),
('Lima', 'lima@email.com', 1);
