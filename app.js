var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('demo')
})

app.listen(process.env.PORT || 3000)
