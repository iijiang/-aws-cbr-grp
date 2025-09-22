const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Root route
app.get('/', (req, res) => {
  res.send('Hello from your Node.js demo app! Version 3.0');
});

// /ping route
app.get('/ping', (req, res) => {
  res.json({ pong: true });
});

app.listen(port, () => {
  console.log(`Demo app listening at http://localhost:${port}`);
});
