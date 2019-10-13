const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.writeHead(200, {"Content-Type": "text/plain"})
  res.end("hello test2/app2")
})

app.listen(8082, () => console.log('listening on port 8082'))
