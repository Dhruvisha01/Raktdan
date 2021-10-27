var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var nodemailer = require('nodemailer');
const multiparty = require("multiparty");

var con = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "raktkosh1",
  multipleStatements: true
});

// Nodemailer
const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com", //replace with your email provider
  port: 587,
  // secure: true,
  service: 'Gmail',
  auth: {
    user: "", //Add your email
    pass: "", //Add your password
  },
});

// verify connection configuration
transporter.verify(function (error, success) {
  if (error) {
    console.log(error);
  } else {
    console.log("Server is ready to take our messages");
  }
});

// ------------------------------Contact us mail send------------------------------
router.get('/', function (req, res) {
  res.render('contact_form', { req: req });
})



// verify connection configuration
transporter.verify(function (error, success) {
  if (error) {
    console.log(error);
  } else {
    console.log("Server is ready to take our messages");
  }
});

router.post("/send", (req, res) => {
  //1.
  let form = new multiparty.Form();
  let data = {};
  form.parse(req, function (err, fields) {
    console.log(fields);
    Object.keys(fields).forEach(function (property) {
      data[property] = fields[property].toString();

    });
    console.log(data);

    //2. You can configure the object however you want
    const mail = {
      sender: `${data.name} <${data.email}>`,
      to: 'raktdan01@gmail.com',
      subject: `Feedback from ${data.name} ${data.email}`,
      text: `Name : ${data.name} \nEmail : ${data.email} \nCompany : ${data.company} \nPhone : ${data.phone} \n\n${data.msg}`,
    };

    //3.
    transporter.sendMail(mail, (err, data) => {
      if (err) {
        console.log(err);
        message = "Something went wrong!"
        res.status(500).send("Something went wrong.");
      } else {
        message = "Thank you for your feedback...we will get back to you shortly!"
        res.status(200).send("Email successfully sent to recipient!");
      }
    });
  });
});


module.exports = router;
