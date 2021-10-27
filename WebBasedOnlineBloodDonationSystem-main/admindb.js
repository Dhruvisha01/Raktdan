var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var session = require('express-session');

var app = express();

app.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(bodyParser.json());


var con = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "raktkosh1",
  multipleStatements: true
});

con.connect(function (err) {
  if (err) throw err;
  console.log("DB Connected!");
});


var obj = {};
router.get('/admin', function (req, resp) {
  con.query("SELECT * FROM `user-verif`", function (error, result) {
    if (!!error) {
      console.log('Error in query');
      console.log(error);
    }
    else {
      obj = { print: result, req: req };
      console.log('successsss');
      resp.render('admin', obj);
    }
  });
});

//------------------------------Deleting User------------------------------
router.get('/admin/delete/:id', function (req, res, next) {
  var id = req.params.id;
  var sql = 'DELETE FROM `user-verif` WHERE id = ?';
  con.query(sql, [id], function (err, data) {
    if (err) throw err;
    console.log(data.affectedRows + " record(s) updated");
  });
  res.redirect('/admin');

});

//------------------------------User edit------------------------------
router.get('/admin/edit/:id', function (req, res, next) {
  var UserId = req.params.id;
  var sql = "SELECT * FROM `user-verif` WHERE ID = '" + UserId + "'";
  con.query(sql, function (err, data) {
    if (err) throw err;

    res.render('users-form', { title: 'User List', editData: data[0], req: req });
  });
});
router.post('/admin/edit/:id', function (req, res, next) {
  var id = req.params.id;
  var updateData = req.body;
  var sql = "UPDATE `user-verif` SET ? WHERE ID= '" + id + "'";
  con.query(sql, [updateData, id], function (err, data) {
    if (err) throw err;
    console.log(data.affectedRows + " record(s) updated");
  });
  res.redirect('/admin');
});

//------------------------------Camps Organized------------------------------
router.get('/admin/camps', function (req, resp) {
  con.query("SELECT * FROM `camps`", function (error, result) {
    if (!!error) {
      console.log('Error in query-camps');
      console.log(error);
    }
    else {
      obj = { print: result, req: req };
      console.log('successsss-camps');
      //console.log(result);
      resp.render('camps', obj);
    }
  });
});

//------------------------------Camps Donors------------------------------
router.get('/admin/camps/donors/:id', function (req, resp) {
  var Camp_id = req.params.id;
  con.query("SELECT * FROM `camp_donor` WHERE camp_n = '" + Camp_id + "'", function (error, result) {
    if (!!error) {
      console.log('Error in query-camps-donor');
      console.log(error);
    }
    else {
      obj = { print: result, req: req };
      console.log('successsss-camps-donor');
      //console.log(result);
      resp.render('camps-donor', obj);
    }
  });
});

//------------------------------Delete the donor's data------------------------------
router.get('/admin/camps/donors/delete/:id', function (req, res, next) {
  var Donor_id = req.params.id;
  var sql = "DELETE FROM `camp_donor` WHERE D_id = '" + Donor_id + "'";
  con.query(sql, function (err, data) {
    if (err) throw err;

    res.redirect('/admin/camps');
  });

});

//------------------------------Edit the Donor's Data------------------------------
router.get('/admin/camps/donors/edit/:id', function (req, res, next) {
  var Donor_id = req.params.id;
  var sql = "SELECT * FROM `camp_donor` WHERE D_id = '" + Donor_id + "'";
  con.query(sql, function (err, data) {
    if (err) throw err;

    res.render('donor-form', { title: 'User List', editData: data[0], req: req });
  });
});
router.post('/admin/camps/donors/edit/:id', function (req, res, next) {
  var id = req.params.id;
  var updateData = req.body;
  var sql = "UPDATE `camp_donor` SET ? WHERE D_id= '" + id + "'";
  con.query(sql, [updateData, id], function (err, data) {
    if (err) throw err;
    console.log(data.affectedRows + " record(s) updated");
  });
  res.redirect('/admin/camps');
});

//------------------------------Display the volunteers data------------------------------
router.get('/admin/camps/volunteers/:id', function (req, resp) {
  var Camp_id = req.params.id;
  con.query("SELECT * FROM `camp_volunteer` WHERE Camp = '" + Camp_id + "'", function (error, result) {
    if (!!error) {
      console.log('Error in query-camps-volunteers');
      console.log(error);
    }
    else {
      obj = { print: result, req: req };
      console.log('successsss-camps-volunteers');
      //console.log(result);
      resp.render('camps-volunteers', obj);
    }
  });
});

//------------------------------Delete the volunteer's data------------------------------
router.get('/admin/camps/volunteers/delete/:id', function (req, res, next) {
  var Volunteer_id = req.params.id;
  var sql = "DELETE FROM `camp_volunteer` WHERE V_id = '" + Volunteer_id + "'";
  con.query(sql, function (err, data) {
    if (err) throw err;

    res.redirect('/admin/camps');
  });

});

//------------------------------Edit the volunteer's ------------------------------
router.get('/admin/camps/volunteers/edit/:id', function (req, res, next) {
  var Volunteer_id = req.params.id;
  var sql = "SELECT * FROM `camp_volunteer` WHERE V_id = '" + Volunteer_id + "'";
  con.query(sql, function (err, data) {
    if (err) throw err;

    res.render('volunteer-form', { title: 'User List', editData: data[0], req: req });
  });
});
router.post('/admin/camps/volunteers/edit/:id', function (req, res, next) {
  var id = req.params.id;
  var updateData = req.body;
  var sql = "UPDATE `camp_volunteer` SET ? WHERE V_id= '" + id + "'";
  con.query(sql, [updateData, id], function (err, data) {
    if (err) throw err;
    console.log(data.affectedRows + " record(s) updated");
  });
  res.redirect('/admin/camps');
});


var obj = {};
router.get('/table', function (req, res) {
  console.log('GET request recieved at/');
  var que = "SELECT * FROM `bank_verif`"
  con.query(que, function (err, result) {
    if (err) throw err;
    else {
      obj = { userData: result, req: req };
      res.render("table", obj);
    }
  });
});

//------------------------------edit from bb db------------------------------
router.get('/edit/:id', function (req, res, next) {
  var id = req.params.id;
  var sql = "SELECT * FROM `bank_verif` WHERE ID='" + id + "'";
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.render("form", { userData: result[0], req: req });
  });
});

router.post('/edit/:id', function (req, res, next) {
  var id = req.params.id;
  var updata = req.body;
  var sql = "UPDATE `bank_verif` SET ? WHERE ID='" + id + "'";
  con.query(sql, [updata, id], function (err, result) {
    if (err) throw err;
    console.log(result.affectedRows + "records updated");
  });
  res.redirect('/table');
});

//------------------------------delete from bb db------------------------------
router.get('/delete/:id', function (req, res) {
  var id = req.params.id;
  var sql = "DELETE FROM `bank_verif` WHERE ID=?";
  con.query(sql, [id], function (err, result) {
    if (err) throw err;
    console.log(result.affectedRows + "records updated")
  });
  res.redirect('/table');
});

module.exports = router;
