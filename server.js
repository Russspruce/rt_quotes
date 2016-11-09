require('dotenv').config()

var express = require('express');
var app = express();
var port = process.env.PORT || 8080;
var passport = require('passport');
var flash = require('connect-flash');


//Added


var morgan = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');

// require('./config/passport')(passport);

app.use(express.static('public'));
app.use(morgan('dev'));
app.use(cookieParser());
app.use(bodyParser());

app.set('view engine', 'ejs');

// app.use(session({ secret: 'bringallthegoodstothepartysowecanparty'}))
app.use(function(req, res, done) {
  console.log(`~~~~~~~~~~~~~~~~~~`, req.headers);
  if (req.headers['appkey'] !== process.env.CLIENT_APP_KEY) return res.json({ error: 'Unauthenticated'});

  done()
})
app.use(passport.initialize());
app.use(passport.session());
app.use(flash());

require('./app/routes.js')(app);

app.listen(port);
console.log('Serving now on port ' + port);
