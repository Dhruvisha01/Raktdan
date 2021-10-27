# WebBasedOnlineBloodDonationSystem
Google Developer Solution 2021
Goal No:3 - Health and well being

To overcome the huge shortage of blood we decided to create a web based blood
donation system which will be completely computerized thereby reducing the amount of
manual work drastically.
In our system, we accept the Aadhar number for authentication purposes. The donor
and recipient will be required to register first. The registration process will involve
verifying the user’s mobile number, email-id and Aadhar number. Once the recipient
registers, he will be directed to the find a donor page, where, upon entering the details,
he will be shown a complete list of available donors in his city and of his/her matching
blood group and a list of blood banks having the matching blood group in his area.
Apart from finding a donor, we also allow people to register as volunteers and donors
for blood donation camps. If a person wants to organize a camp he/she will fill in his
details and they will reach the admin who will further process the request.
In case a blood bank wants to write to the admin requesting a particular blood group in
urgency then he can do that through the contact us page and the message will be
displayed by the admin on the website. Other users can also submit their grievances
and feedback on the contact us page.
An inventory management system has been implemented in which the expiry date of
blood bags and the number of units of blood is taken care of.
In the find the donor page, when a user enters details, a table will be displayed
containing information about the donors who are eligible to donate i.e. the donors who
haven’t donated from the last 3 months and information about blood bags which have
not expired.


How to run our project?
Step 1: Download the entire repository along with the MySql database.
Step 2: Import our database into your MySql server.
Step 3: Run the command “npm install” to install all the softwares required.
Step 4: Add your signed in valid email and password in the following parts of files:
        Line number 79 and 80 in index.js
        Line number 19 and 20 in register.js
        Line number 23 and 24 in contact.js
Step 5: Run the command “nodemon index.js” to start our project.


Yt link: https://youtu.be/pqvSWO4PvZk
