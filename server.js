const express = require("express");
const app = express();
const port = 3000;
const path = require('path');
const mysql = require('mysql2');
var connection = require('./database').databaseConnection;
var routes = require('./routes/index');

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.urlencoded({ extended: true }));

app.use("/", routes);

app.use("/recipes", routes);

app.use("/recipe", routes);

app.use("/add", routes);

app.listen(port, function () {
  console.log(`Example app listening on port ${port}!`);
});