const express = require('express');
const app = express();
const port = 5000;

app.get('/', (req, res) => {
  res.send('Hello from Web-server!');
});

app.listen(port, () => {
  console.log(`Web-Server listening at http://localhost:${port}`);
});
