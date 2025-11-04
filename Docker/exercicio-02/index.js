const express = require("express");
const { Client } = require("pg");

const app = express();
const port = process.env.PORT || 3000;

const client = new Client({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
  });

app.get("/", (_, res) => {
  res.send({
    message: "Exercício 02 - Compose com API + Banco de Dados",
    status: "API funcionando e conectada ao banco de dados!",
    timestamp: new Date().toLocaleString(),
  });
});

app.listen(port, () => {
  setTimeout(() => {
    client
    .connect()
    .then(() => console.log("Conectado ao banco de dados!"))
    .catch((err) => console.error("Erro ao conectar:", err))
    .finally(() => console.log(`Servidor executando em http://localhost:${port}`));
  }, 10000)
});
