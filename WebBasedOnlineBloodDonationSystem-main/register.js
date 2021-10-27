var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var nodemailer = require('nodemailer');
const fast2sms = require('fast-two-sms');
require('dotenv').config();

var phone = "";
var email;
var type;
var otp;

const transporter = nodemailer.createTransport({
    host: "smtp.gmail.com", //replace with your email provider
    port: 587,
    // secure: true,
    service: 'Gmail',
    auth: {
        user: "", //Add your email
        pass: "", // Add your password
    },
});

var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "raktkosh1",
    multipleStatements: true
});

router.get('/', function (req, res) {
    res.render("register", { req: req });
});

router.post('/send', function (req, res) {
    var fname = req.body.fname;
    var lname = req.body.lname;
    email = req.body.email;
    var password = req.body.password;
    var gender = req.body.optradio;
    var age = req.body.age;
    var blood_group = req.body.blood_group;
    var address_1 = req.body.address_1;
    var address_2 = req.body.address_2;
    var address_3 = req.body.address_3;
    var address_4 = req.body.address_4;
    var address_5 = req.body.address_5;
    type = req.body.submit;
    phone = req.body.phone;
    req.session.type = type;
    req.session.em = email;
    var aadhar_number = req.body.aadhar_number;
    var sql = "INSERT INTO `user-verif` (fname, lname, email, password, gender, age, address, city, pincode, state, country, bloodtype, phone, aadhar, verification_status) VALUES ('" + fname + "', '" + lname + "','" + email + "', '" + password + "', '" + gender + "', '" + age + "',  '" + address_1 + "', '" + address_2 + "', '" + address_3 + "', '" + address_4 + "', '" + address_5 + "', '" + blood_group + "', '" + phone + "', '" + aadhar_number + "', '0')";
    con.query(sql, function (err, result) {
        if (err) throw err;
        else {
            console.log("1 record inserted");
            res.render("verify", {
                msg: "",
                msg1: "", req: req
            });
        }
    });
});


router.post('/send1', function (req, res) {
    var name = req.body.fname;
    email = req.body.email;
    var password = req.body.password;
    var address_1 = req.body.address_1;
    var address_2 = req.body.address_2;
    var address_3 = req.body.address_3;
    var address_4 = req.body.address_4;
    var address_5 = req.body.address_5;
    type = req.body.submit;
    phone = req.body.phone;
    req.session.type = type;
    req.session.em = email;
    var sql = "INSERT INTO `bank_verif` (name, email, password, address, city, state, pincode, country, contact, verification_status) VALUES ('" + name + "', '" + email + "', '" + password + "',   '" + address_1 + "', '" + address_2 + "', '" + address_3 + "', '" + address_4 + "',  '" + address_5 + "', '" + phone + "', '0')";
    con.query(sql, function (err, result) {
        if (err) throw err;
        else {
            console.log("1 record inserted");
            res.render("verify", {
                msg: "",
                msg1: ""
            }, { req: req });
        }
    });
});
//verification

router.get('/verify', function (req, res) {
    res.render("verify", {
        msg: '',
        msg1: ''
    }, { req: req });
});

router.post('/verify', function (req, res) {
    console.log(req.session.type);
    console.log(otp);
    var otpp = parseInt(req.body.otp)
    console.log(otpp);
    if (otpp === otp) {
        if (req.session.type === 'user') {
            var sql = "UPDATE `user-verif` SET `verification_status` = '1' WHERE `user-verif`.`email` = '" + req.session.em + "'";
            con.query(sql, function (err, result) {
                if (err) throw err;
                else {
                    console.log("registeration complete");
                    res.redirect("/login");
                }
            });
        } else if (req.session.type === "hospital") {
            var sql = "UPDATE `bank_verif` SET `verification_status` = '1' WHERE `bank_verif`.`email` = '" + req.session.em + "'"
            con.query(sql, function (err, result) {
                if (err) throw err;
                else {
                    console.log("registeration complete");
                    res.redirect("/login");
                }
            });
        }
    } else {
        res.render('verify', {
            msg1: 'OTP is incorrect. Enter correct OTP or click on resend button',
            msg: ""
        }, { req: req });
    }
});

router.post("/sendotp", async function (req, res) {
    otp = Math.random();
    otp = otp * 1000000;
    otp = parseInt(otp);
    console.log(otp);
    if (req.body.typeverif === 'email') {
        // send mail with defined transport object
        var mailOptions = {
            to: email,
            subject: "Otp for registration: ",
            html: "<h1>Raktdaan</h1><h3>OTP for account verification is </h3>" + "<h1 style='font-weight:bold;'>" + otp + "</h1>" // html body
        };

        transporter.sendMail(mailOptions, (error, info) => {
            if (error) {
                return console.log(error);
            }
            console.log('Message sent: %s', info.messageId);
            console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));
            res.render('verify', {
                msg: "We have sent you an OTP.",
                msg1: ""
            }, { req: req });

        });
    } else if (req.body.typeverif === 'sms') {
        console.log(phone);
        console.log(typeof (phone));
        const response = await fast2sms.sendMessage({
            authorization: process.env.API_KEY,
            message: "Your Raktdaan verification code is " + otp + " .",
            numbers: [phone]
        })
        res.render('verify', {
            msg: "We have sent you an OTP.",
            msg1: ""
        }, { req: req });
    }

});

router.post('/resend', async function (req, res) {
    otp = Math.random();
    otp = otp * 1000000;
    otp = parseInt(otp);
    console.log(otp);
    if (req.body.typeverif === 'email') {
        // send mail with defined transport object
        var mailOptions = {
            to: email,
            subject: "Otp for registration: ",
            html: "<h1>Raktdaan</h1><h3>OTP for account verification is </h3>" + "<h1 style='font-weight:bold;'>" + otp + "</h1>" // html body
        };

        transporter.sendMail(mailOptions, (error, info) => {
            if (error) {
                return console.log(error);
            }
            console.log('Message sent: %s', info.messageId);
            console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));

        });
    } else if (req.body.typeverif === 'sms') {
        const response = await fast2sms.sendMessage({
            authorization: process.env.API_KEY,
            message: "Your Raktdaan verification code is " + otp + " .",
            numbers: [phone]
        })
    }
    res.render('verify', {
        msg: "We have sent you an OTP again",
        msg1: ""
    }, { req: req });
});


module.exports = router;
