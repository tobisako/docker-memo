'use strict';
const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

const app = express();
app.get('/', (req, res) => {
  res.send('Hello aws ECR node1\n');
});

app.listen(PORT, HOST);
console.log(`aws_ect test: Running on http://${HOST}:${PORT}`);
