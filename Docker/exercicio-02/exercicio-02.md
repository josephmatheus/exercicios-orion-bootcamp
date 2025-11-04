# Exercício 2 — Compose com API + Banco de Dados

## Objetivo

Aprender a conectar múltiplos containers (API + DB) usando docker-compose e variáveis de
ambiente.

## Descrição

Monte uma stack com dois serviços:

1. api

    - Build via Dockerfile (igual ao exercício anterior).
    - Usa variáveis de ambiente (DB_HOST, DB_USER, DB_PASS).
    - Se conecta ao banco via hostname do serviço db.

2. db

    - Use imagem oficial (postgres, mysql ou mongo).
    - Configure um volume para persistência.
    - Variáveis de ambiente no docker-compose.yml (ex:POSTGRES_PASSWORDPOSTGRES_DB).

## Critérios de sucesso

- docker compose up cria rede interna e os serviços se comunicam.
- A API consegue se conectar e gravar dados no banco.
- O volume persiste os dados mesmo após docker compose down.

## Extras (avançado)

- Usar um arquivo .env externo para variáveis sensíveis.
- Testar dependência (depends_on).
