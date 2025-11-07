# Exercicio 3 - Resolução

Crie uma coleção (equivalente a uma "tabela") para os posts de um blog. Você irá inserir documentos (equivalente a "linhas") com estruturas diferentes para provar a flexibilidade.

1. **Criar uma coleção:**
    - Nomeie a coleção como posts.

      ```mongosh
      use exercicios-3-e-4
      db.createCollection("posts")
      ```

2. **Inserir (Create):**
    - Insira um documento com: titulo, autor e conteudo.

      ```mongosh
      db.posts.insertOne({
        titulo: "Título 01",
        autor: "Joseph",
        conteudo: "Insira um documento com: titulo, autor e conteudo."
      })
      ```

3. **Testar Schema Flexível:**
    - Insira um segundo documento com: titulo, autor, conteudo e um campo novo:
tags (um array de strings, ex: ["nosql", "flexivel"]).

      ```mongosh
      db.posts.insertOne({
        titulo: "Título 02",
        autor: "Matheus",
        conteudo: "Insira um segundo documento com: titulo, autor, conteudo e um campo novo: tags (um array de strings, ex: ['nosql', 'flexivel']).",
        tags: ["nosql", "flexivel"]
      })
      ```

4. **Consultar (Read):**
    - Use o comando find() para listar todos os documentos da coleção posts.

      ```mongosh
      db.posts.find().pretty()
      ```
