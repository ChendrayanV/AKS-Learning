const express = require('express');
const app = express();
const os = require('os');
const port = 3000;
const host = '0.0.0.0';

app.set('views', './views');
app.set('view engine', 'pug');

var HOSTNAME = os.hostname
app.get('/', function (req, res) {
    res.render('index', { title: 'AKS | Demo', message: HOSTNAME });
});

app.listen(port, host, () => {
    console.log(`Server started at ${host} port ${port}`);
});     