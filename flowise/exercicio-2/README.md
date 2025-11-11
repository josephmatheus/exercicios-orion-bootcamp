# Exercício 2 — Fluxo Condicional com 3 Agentes

## Objetivo

Criar três agentes especialistas conectados a suas bases e um classificador de intenção
que roteia perguntas automaticamente.

### 1. Agentes

- Agente Economia — responde perguntas financeiras
- Agente Saúde — responde perguntas médicas e de bem-estar
- Agente Tecnologia — responde perguntas de IA, software e inovação

### 2. Fluxo

- O usuário envia uma pergunta via API
- O classificador de intenção detecta o tema: economia, saúde ou tecnologia
- A pergunta é roteada automaticamente para o agente correto
- Cada agente utiliza seu Document Store para recuperar informações relevantes e gerar a resposta
