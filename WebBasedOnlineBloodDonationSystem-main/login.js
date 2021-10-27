var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "raktkosh1",
  multipleStatements: true
});

// ------------------------------Login page------------------------------
router.get('/', function (req, res) {
  // res.sendFile(path.join(__dirname, '/views', '/login.ejs'));
  message = '';
  res.render("login", { req: req });
});

router.post('/auth', function (req, res) {
  var username = req.body.email;
  var password = req.body.password;
  // query1 = 'SELECT * FROM `user-verif` WHERE email = ? AND password = ? AND `verification_status`= "1" '
  if (username && password) {
    if (username == 'raktdan01@gmail.com' && password == 'Vampire@10') { // Admin Login
      req.session.loggedin = true;
      console.log('Admin Login');
      res.redirect('/admin');
    }
    else {
      //------------------------------User Login------------------------------
      if (req.body.optradio === 'user') {
        var sql = "SELECT * FROM `user-verif` WHERE email = '" + username + "' AND password = '" + password + "'";
        con.query(sql, function (error, results) {
          if (error) throw error
          console.log(results);
          if (results.length > 0) {
            console.log(results);
            var status = results[0].verification_status;
            console.log(status)
            if (status === '1') {
              req.session.loggedin = true;
              req.session.username = username;
              req.session.name = results[0].fname;
              req.session.lname = results[0].lname;

              req.session.contact = results[0].phone;
              req.session.house = results[0].address;
              req.session.city = results[0].city;
              req.session.state = results[0].state;
              req.session.country = results[0].country;
              req.session.pincode = results[0].pincode;
              fullName = req.session.name + ' ' + req.session.lname;
              address = req.session.house + ' ' + req.session.city;

              res.render('profile', { name: fullName, contact: req.session.contact, username: req.session.username, house: req.session.house, city: req.session.city, state: req.session.state, country: req.session.country, pincode: req.session.pincode, address: address, req: req });
            }
            else {
              message = 'Verify Your account first!';
              res.render('login', { message: message, req: req });
            }
          } else {
            message = 'Wrong Credentials!';
            res.render('login', { message: message, req: req });
          }
          res.end();
        });
      }
      //------------------------------BB Login------------------------------
      else if (req.body.optradio === 'bb') {
        var sqli = "SELECT * FROM `bank_verif` WHERE `email`='" + username + "' AND `password` = '" + password + "'";
        con.query(sqli, function (error, results) {
          if (error) throw error
          if (results.length > 0) {
            console.log(results);
            var status = results[0].verification_status;
            console.log(status)
            if (status === 1) {
              req.session.loggedin = true;
              req.session.username = username;
              req.session.ID = results[0].ID;
              req.session.name = results[0].name;
              req.session.address = results[0].address;
              req.session.city = results[0].city;
              req.session.state = results[0].state;
              res.redirect('/tabled');
            }
            else {
              message = 'Verify Your account first!';
              res.render('login', { message: message, req: req });
            }
          } else {
            message = 'Wrong Credentials!';
            res.render('login', { message: message, req, req });
          }
          res.end();
        });
      }
    }
  }
  else {
    message = 'Enter Username And Password';
    res.render('login', { message: message, req: req });
    res.end();
  }
});

// ------------------------------Logout------------------------------
router.get('/logout', function (req, res) {
  req.session.destroy();
  res.redirect('/login');

})

module.exports = router;


