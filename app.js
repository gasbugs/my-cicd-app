const http = require('node:http');

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain; charset=utf-8');
  res.end('안녕하세요, Node.js 세계에 오신 것을 환영합니다!');
});

server.listen(port, hostname, () => {
  console.log(`서버가 http://${hostname}:${port}/ 에서 실행 중입니다.`);
});
