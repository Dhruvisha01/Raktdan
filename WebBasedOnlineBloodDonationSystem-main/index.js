var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var session = require('express-session');
var path = require('path');
var nodemailer = require('nodemailer');
const moment = require('moment');
const excel = require('exceljs');
// const config = require("./config")
// const client = require("twilio")(config.accountSID, config.authToken)
const fast2sms = require('fast-two-sms');
require('dotenv').config();
// const {
//     validateRequestWithBody
// } = require('twilio/lib/webhooks/webhooks');
const multiparty = require("multiparty");
const {
    version
} = require('os');
require("dotenv").config();

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

app.use(express.static('public'));
app.set('view engine', 'ejs');

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

var typeblood = "";
var blood_group = "";
var bloodbags = "";
var component = "";
var bg = [];
var bloodgroup = "";
var compo = "";
var city = "";
var state = "";
var find = "";
var sqlite = "";
var sqlitee = "";
var phone = "";
var email;
var ver = 'false';
var ve = 'false';
var veb = 'false';
var type;
var otp;

let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    // secure: true,
    service: 'Gmail',

    auth: {
        user: '', //Add your email
        pass: '', //Add your password
    }

});

// login
var login = require('./login');
app.use('/login', login);

// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Dashboards  ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------

// admin
var admindb = require('./admindb');
app.use('/', admindb);

// campps organiserForm
var organiserForm = require('./campsorganiser');
app.use('/organiserForm', organiserForm);

var donor = require('./formdonor');
app.use('/donor', donor);

var volunteer = require('./formvolunteer');
app.use('/volunteer', volunteer);

// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Send Mails (contact) ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------
var contactus = require('./contact');
app.use('/contact-us', contactus);

// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Find a donr ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------

var fad = require('./fad');
app.use('/fad', fad);

// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Registration and Verification ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------
var register = require('./register');
app.use('/register', register);



// Dashboard for BLOODBANKS
var tabled = require('./bloodbankdb.js');
app.use('/tabled', tabled);


// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Static Pages ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------
app.get('/index', function (req, res) {
    res.render("index", { req: req });
});

app.get('/facts', function (req, res) {
    res.render("facts", { req: req });
});

app.get('/campsMain', function (req, res) {
    res.render("campsMain", { req: req });
});

// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Profile Page ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------
app.get('/home', function (req, res) {
    if (req.session.loggedin) {
        message = '';
        res.render("profile", { req: req });
    }
    else
        res.redirect('/login')
});

app.get('/update', function (req, res) {
    if (req.session.loggedin) {
        message = '';
        res.render("home", { req: req });
    }
    else
        res.redirect('/login')
});


// ------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------  Report ---------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------


app.post('/report', function (req, res) {
    var id = req.params.id;

    console.log(id);
    // -> Query data from MySQL
    con.query("SELECT component.componemts, blood_type.blood_group, cummulative.bags FROM `cummulative` JOIN component on component.componentID = cummulative.componentID JOIN blood_type on blood_type.group_id = cummulative.blood_group  WHERE cummulative.b_h_id='" + req.session.ID + "'", function (err, customers, fields) {

        console.log(customers);
        const jsonCustomers = JSON.parse(JSON.stringify(customers));

        let workbook = new excel.Workbook(); //creating workbook
        let worksheet = workbook.addWorksheet('Customers'); //creating worksheet

        //  WorkSheet Header
        worksheet.columns = [
            { header: 'bloodGroup', key: 'blood_group', width: 30 },
            { header: 'component', key: 'componemts', width: 30 },
            { header: 'noOfBags', key: 'bags', width: 30 },
        ];

        // Add Array Rows
        worksheet.addRows(jsonCustomers);

        var tempFilePath = 'tempfile.xlsx';
        workbook.xlsx.writeFile(tempFilePath).then(function () {
            console.log('file is written');
            res.sendFile(__dirname + "/" + tempFilePath, function (err) {
                console.log('---------- error downloading file: ' + err);
            });
        });


    });
});

app.listen(3000, function () {
    console.log('Listening to port 3000');
});

