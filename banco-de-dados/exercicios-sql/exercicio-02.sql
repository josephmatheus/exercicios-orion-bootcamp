-- Descrição
-- Usando o esquema e os dados do Exercício 1, você agora vai responder perguntas complexas que exigem a combinação de dados das tabelas alunos e cursos.

-- 1. **Escrever um `SELECT` que:**
--     - Use INNER JOIN para mostrar o nome do aluno e o nome do curso que ele está fazendo, em uma única consulta.
SELECT alunos.nome, cursos.nome_curso
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id;

-- 2. **Escrever um `SELECT` que:**
--     - Use `WHERE` e `JOIN` para mostrar apenas os alunos que estão no curso de, por exemplo, "Desenvolvimento Web".
SELECT alunos.nome, cursos.nome_curso
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE cursos.nome_curso = 'Desenvolvimento Web';

-- 3. **Executar um `UPDATE` que:**
--     - Altere o `curso_id` de um aluno específico
UPDATE alunos
SET curso_id = 2
WHERE id = 4;
