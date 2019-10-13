var http = require('http')
var server = http.createServer()

server.on('request', function(req, res) {
    var now = new Date()
    console.log("[" + now.getSeconds() + "] log output")
    res.writeHead(200, {'Content-Type': 'text/plain'})
    res.write('hello test1!')
    res.end()
})

//server.listen(8080, 'localhost')
server.listen(8080, '0.0.0.0')
console.log("ready 8080")
