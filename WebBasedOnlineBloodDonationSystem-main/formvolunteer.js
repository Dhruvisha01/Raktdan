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


// ------------------------------Camps donor form diaplay------------------------------
router.get('/', function (req, res, next) {

    var sql = "SELECT * FROM `camps` WHERE 1";
    if (req.session.loggedin) {

        con.query(sql, function (err, b) {
            if (err) throw err;
            else {
                console.log("YOLO");
                res.render('volunteer', { comm: b, req: req });
            }
        });
    }


    else
        res.redirect('/login')

});




// ------------------------------Camps donor form data to db ------------------------------
router.post('/create', function (req, res, next) {
    const userDetails = req.body;
    var sql = 'INSERT INTO `camp_volunteer` SET ?'
    con.query(sql, userDetails, function (err, data) {
        if (err) throw err;
        console.log('Camps volunteer info inserted successfully');
    })
    res.redirect('/campsMain');
});


module.exports = router;
