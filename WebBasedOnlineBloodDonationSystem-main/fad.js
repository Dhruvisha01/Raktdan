var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const moment = require('moment');
const fast2sms = require('fast-two-sms');
require('dotenv').config();

var find = "";
var bloodgroup = "";
var compo = "";
var city = "";
var state = "";
var find = "";
var name_recipient = "";

var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "raktkosh1",
    multipleStatements: true
});

router.get('/', function (req, res, next) {
    console.log(req.session.loggedin);
    if (req.session.loggedin) {
        if (find === 'find') {
            con.query(sqlite, function (err, r) {
                if (err) throw err;
                con.query(sqlitee, function (err, resp) {
                    if (err) throw err;
                    else {
                        var mysqlTimestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
                        var date = new Date(mysqlTimestamp);
                    }
                    res.render("find_a_donor", {
                        donor: r,
                        fin: find,
                        bank: resp,
                        date: date,
                        req: req
                    });
                });
            });
        } else {
            res.render("find_a_donor", {
                fin: find,
                req: req
            });
        }
    }
    else
        res.redirect('/login')
});


router.post('/', function (request, response) {
    bloodgroup = request.body.bloodgroup;
    compo = request.body.compo;
    city = request.body.city;
    state = request.body.state;
    country = request.body.country;
    find = request.body.find;
    name_recipient = request.body.name;
    if (find === 'find') {
        if (compo === '1' || compo === '2') {
            if (bloodgroup === '1') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' || `group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' || `group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '2') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (group_id` = '2' || `group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (group_id` = '2' || `group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '3') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '3' || `group_id` = '7' || `group_id` = '8' || `group_id` = '4') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`b_h_id` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '3' || `group_id` = '7' || `group_id` = '8' || `group_id` = '4') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '4') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (group_id` = '8' || group_id` = '4') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '8' || `group_id` = '4') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '5') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (group_id` = '2' || `group_id` = '7' || `group_id` = '8' || `group_id` = '1'|| `group_id` = '3'|| `group_id` = '4'|| `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (group_id` = '2' || `group_id` = '7' || `group_id` = '8' || `group_id` = '1'|| `group_id` = '3'|| `group_id` = '4'|| `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '6') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '2' || `group_id` = '8' || `group_id` = '4'|| `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '2' || `group_id` = '8' || `group_id` = '4'|| group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '7') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '7' || `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '8') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";

            }
        } else if (compo === '3') {
            if (bloodgroup === '1' || bloodgroup === '2') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' || `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' || `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '3' || bloodgroup === '4') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '3' || `group_id` = '4' || `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '3' || `group_id` = '4' || `group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '5' || bloodgroup === '6') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE ((`group_id` = '5' || `group_id` = '6') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            } else if (bloodgroup === '7' || bloodgroup === '8') {
                sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '5' || `group_id` = '6'|| `group_id` = '1'|| `group_id` = '2'|| `group_id` = '3'|| `group_id` = '4'|| `group_id` = '7'|| `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
                sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '5' || `group_id` = '6'|| `group_id` = '1'|| `group_id` = '2'|| `group_id` = '3'|| `group_id` = '4'|| `group_id` = '7'|| `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            }
        } else if (compo === '4') {
            sqlite = "SELECT `user-verif`.`fname`,`user-verif`.`lname`,`user-verif`.`gender`,`user-verif`.`age`,`user-verif`.`email`,`user-verif`.`phone`,`user-verif`.`address`,`user-verif`.`city`,`user-verif`.`pincode`,`user-verif`.`state`,`blood_type`.`blood_group`,`user-verif`.`country` FROM `blood_type` JOIN `user-verif` ON `user-verif`.`bloodtype` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' ||`group_id` = '3' || `group_id` = '4' || `group_id` = '5' || `group_id` = '6' || `group_id` = '7'|| `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
            sqlitee = "SELECT * FROM `blood_bank` JOIN `bank_verif` ON `blood_bank`.`blood_group` = `bank_verif`.`ID` JOIN `blood_type` ON `blood_bank`.`blood_group` = `blood_type`.`group_id` WHERE (`group_id` = '1' || `group_id` = '2' ||`group_id` = '3' || `group_id` = '4' || `group_id` = '5' || `group_id` = '6' || `group_id` = '7'|| `group_id` = '8') && (`city` = '" + city + "') && (`state` = '" + state + "')";
        }
    }
    response.redirect("/fad");
});

router.get('/sendmsg/:id', async function (req, res) {
    var ping = req.params.id;
    console.log(ping);
    console.log(name_recipient);
    console.log(bloodgroup);
    console.log(state);
    console.log(city);
    if (bloodgroup === '1') {
        bloodgroup = 'A positive';
    } else if (bloodgroup === '2') {
        bloodgroup = 'A negative';
    } else if (bloodgroup === '3') {
        bloodgroup = 'B positive';
    } else if (bloodgroup === '4') {
        bloodgroup = 'B negative';
    } else if (bloodgroup === '5') {
        bloodgroup = 'AB positive';
    } else if (bloodgroup === '6') {
        bloodgroup = 'AB negative';
    } else if (bloodgroup === '7') {
        bloodgroup = 'O positive';
    } else if (bloodgroup === '8') {
        bloodgroup = 'O negative';
    }
    if (compo === '1') {
        compo = 'Whole blood'
    } else if (compo === '2') {
        compo = 'Red blood cells'
    } else if (compo === '3') {
        compo = 'Plasma'
    } else if (compo === '4') {
        compo = 'Platelets'
    }
    const response = await fast2sms.sendMessage({
        authorization: process.env.API_KEY,
        message: "From Raktdaan, Emergency Alert! " + name_recipient + " residing in " + city + " city, " + state + " state urgently needs " + bloodgroup + " blood for " + compo + " transfusion. Please help. ",
        numbers: [ping]
    })
    res.redirect('/fad');
});

module.exports = router;
