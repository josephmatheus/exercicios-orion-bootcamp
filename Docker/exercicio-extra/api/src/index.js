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

let isDbConnected = false;

app.get("/", (_, res) => {
  res.send({
    message: "Exercício 02 - Compose com API + Banco de Dados",
    status: "API funcionando e conectada ao banco de dados!",
    timestamp: new Date().toLocaleString(),
  });
});

app.get("/health", (_, res) => {
  res.status(isDbConnected ? 200 : 500).json({
    status: isDbConnected ? "OK" : "DEGRADED",
    database: isDbConnected ? "Connected" : "Disconnected",
    timestamp: new Date().toLocaleString(),
  });
});

app.listen(port, () => {
  console.log(`Servidor executando em http://localhost:${port}`);

  setTimeout(() => {
    client
      .connect()
      .then(() => {
        console.log("✅ Conectado ao banco de dados!");
        isDbConnected = true;
      })
      .catch((err) => {
        console.error("❌ Erro ao conectar:", err);
        isDbConnected = false;
      });
  }, 10000);
});
