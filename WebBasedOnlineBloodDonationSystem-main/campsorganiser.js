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


// ------------------------------Camps organiser form diaplay------------------------------
router.get('/', function (req, res, next) {
  res.render('camps_organiser_form', { req: req });
})


// ------------------------------Camps organiser form data to db ------------------------------
router.post('/create', function (req, res, next) {
  const userDetails = req.body;
  var sql = 'INSERT INTO `camps` SET ?'
  con.query(sql, userDetails, function (err, data) {
    if (err) throw err;
    console.log('Camps organiser info inserted successfully');
  })
  res.redirect('/campsMain');
});


module.exports = router;
