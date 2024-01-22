// An example of a vulnerable piece of code
var express = require('express');
var app = express();

app.get('/', function(req, res) {
    var user = req.query.user;
    eval(user); // This is a security vulnerability
});

app.listen(3000);
