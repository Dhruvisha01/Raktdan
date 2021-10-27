var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const moment = require('moment')


var typeblood = "";
var blood_group = "";
var bloodbags = "";
var component = "";
var bg = [];
var bloodgroup = "";
var compo = "";

var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "raktkosh1",
    multipleStatements: true
});

//Dashboard-blood bank/hospital: from addform to databse and entry table's componentID selection
router.post('/', function (req, res) {
    blood_group = req.body.blood_group;
    bloodbags = req.body.bloodbags;
    component = req.body.component;
    console.log(component)
    if (req.body.add === 'add') {
        var mysqlTimestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
        console.log(mysqlTimestamp);
        var date = new Date(mysqlTimestamp);
        console.log(date);
        if (component === '1') {
            var nextDayOfMonth = date.getDate() + 35;
            date.setDate(nextDayOfMonth);
            console.log(date);
        }
        else if (component === '2') {
            const nextDayOfMonth = date.getDate() + 42;
            date.setDate(nextDayOfMonth);
            console.log(date);
        }
        else if (component === '3') {
            const nextDayOfMonth = date.getDate() + 365;
            date.setDate(nextDayOfMonth);
            console.log(date);
        }
        else if (component === '4') {
            const nextDayOfMonth = date.getDate() + 5;
            date.setDate(nextDayOfMonth);
            console.log(date);
        }
        console.log(date)
        var exp = moment(date).format('YYYY-MM-DD HH:mm:ss');
        console.log(exp);
        var sql = "INSERT INTO `blood_bank` (`blood_units`, `entry_date`,`blood_group`, `expiry`, `componentId`) VALUES ('" + bloodbags + "', '" + mysqlTimestamp + "','" + blood_group + "','" + exp + "', '" + component + "')";
        con.query(sql, function (err, result) {
            if (err) throw err;
            else {
                console.log("Record inserted");
            }
            var sqli = "SELECT `bags` FROM `cummulative` WHERE `blood_group` = '" + blood_group + "'  AND `componentId` = '" + component + "' AND `b_h_id`='" + req.session.ID + "'";
            con.query(sqli, function (err, addBags) {
                var original_bags = addBags[0]["bags"];
                bloodbagss = parseInt(bloodbags);
                var total = original_bags + bloodbagss;
                var sqlit = "UPDATE `cummulative` SET `bags`= '" + total + "' WHERE `blood_group` = '" + blood_group + "' AND `componentID` ='" + component + "' AND `b_h_id`='" + req.session.ID + "'";
                con.query(sqlit, function (err, resultt) {
                    if (err) throw err;
                    else {
                        console.log("Record updated");
                    }
                })
            });
        });
    }
    typeblood = req.body.whole;
    res.redirect('/tabled');
});

//Dashboard: delete row in blood_bank database by clicking delete butto in entry talble
router.get("/:id", function (req, res) {
    var requestedid = req.params.id;
    var sqlit = "DELETE FROM `blood_bank` WHERE `bank_id` = '" + requestedid + "'";
    con.query(sqlit, function (err) {
        if (err) throw err;
        else {
            console.log("Record deleted");
            res.redirect("/tabled");
        }
    });
});

//cummulative table in dashboard: blood bank/hospital
router.get('/', function (request, response) {
    if (request.session.loggedin) {
        console.log("Componet Id selected");
        console.log(typeblood);
        bg = [];
        var bbgg = 0;
        for (let bl = 1; bl <= 8; bl++) {
            for (let compo = 1; compo <= 4; compo++) {
                con.query("SELECT `bags` FROM `cummulative` WHERE `blood_group` = '" + bl + "'  AND `componentId` = '" + compo + "' AND `b_h_id`='" + request.session.ID + "'", function (err, damn) {
                    console.log(damn)

                    bbgg = damn[0]['bags'];
                    bg.push(bbgg);
                });
            }
        }
        con.query("SELECT * FROM `blood_type` JOIN `blood_bank` ON `blood_bank`.`blood_group` = blood_type.group_id WHERE `componentid` = '" + typeblood + "' AND `b_h_id`='" + request.session.ID + "'", function (err, re) {
            response.render("tabled", { userData: bg, whole: re, hosname: request.session.name, addresss: request.session.address, cityy: request.session.city, statee: request.session.state, req: request.session.loggedin });
        });
    }
    else
        response.redirect('login');
});

module.exports = router;
