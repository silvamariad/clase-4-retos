/* global __dirname */
var express = require('express');
var app = express();

//static files
app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/index.html')
});

// se ejecuta por el puerto 4000
app.listen(4000, function() {
    console.log('Server on port 4000!');
});