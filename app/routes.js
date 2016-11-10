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

  app.get('/rt-form', function(req, res) {
    res.render('rt-form.ejs');
  });

  app.post('/rt-form', function(req, res) {
    var newRTQuote = RTQuote.build({
      quote:          req.body.quote,
      name:           req.body.name,
      show:           req.body.show,
      timestamp:      req.body.timestamp,
      videoURL:       req.body.videoURL,
      keywords:       req.body.keywords

    });
    newRTQuote.save().then(function(rtquote) {
      console.log(`~~~~~~~~~~~~~~~~~~~~~Quote`, newRTQuote);
      res.redirect('/success');
    }).catch(function(err) {
      return res.json({error: 'Error adding quote'});
    })
  });

  app.get('/ah-form', function(req,res) {
    res.render('ah-form.ejs');
  });

  app.post('/ah-form', function(req, res) {
    var newAHQuote = AHQuote.build({
      quote:          req.body.quote,
      name:           req.body.name,
      show:           req.body.show,
      timestamp:      req.body.timestamp,
      videoURL:       req.body.videoURL,
      keywords:       req.body.keywords

    });
    newAHQuote.save().then(function(ahquote) {
      res.redirect('/success');
    }).catch(function(err) {
      return res.json({error: 'Error adding quote', message: err});
    })
  });

  app.get('/fh-form', function(req,res) {
    res.render('fh-form.ejs');
  });

  app.post('/fh-form', function(req, res) {
    var newFHQuote = FHQuote.build({
      quote:          req.body.quote,
      name:           req.body.name,
      show:           req.body.show,
      timestamp:      req.body.timestamp,
      videoURL:       req.body.videoURL,
      keywords:       req.body.keywords

    });
    newFHQuote.save().then(function(fhquote) {
      res.redirect('/success');
    }).catch(function(err) {
      return res.json({error: 'Error adding quote'});
    })
  });

  app.get('/success', function(req, res) {
    res.render('success.ejs');
  });

};
