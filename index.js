// index.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('AngelList-Node.Js 8 Agust 2024 ');
});

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});

