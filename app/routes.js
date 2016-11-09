var configDB = require('../config/database');
var Sequelize = require('sequelize');

var sequelize = new Sequelize(process.env.DATABASE_URL);

var RTQuote = sequelize.import('./models/rtquote');
var AHQuote = sequelize.import('./models/ahquote');
var FHQuote = sequelize.import('./models/fhquote');

module.exports = function(app) {

  app.get('/', function(req, res) {
    res.render('index.ejs');
  });

  app.get('/rt-form', function(req,res) {
    res.render('rt-form.ejs');
  });

  app.get('/ah-form', function(req,res) {
    res.render('ah-form.ejs');
  });

  app.get('/fh-form', function(req,res) {
    res.render('fh-form.ejs');
  });

};
