const http = require('http');
const port = 3000;

const server = http.createServer((_, res) => {
    res.end('Hello from Docker!');
});

server.listen(3000, () => {
    console.log(`Servidor executando em http://localhost:${port}`);
});
