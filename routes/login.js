var express = require('express');
var router = express.Router();
// Database
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: ''
});

router.post('/', function (req, res) {
    console.log(req.body);
    var userName = req.body.username;
    var password = req.body.password;

    console.log('running query...');
    if (connection) {
        console.log("connection is open");
    }
    else {
        console.log("connection is closed");
    }

    console.log('running query select...');
    var query = 'SELECT * FROM `daily-work-logger-db`.users WHERE UserName = \'' + userName + '\' AND Password=\'' + password + '\';'
    connection.query(query, function (err, rows) {
        var foundUser = rows[0];
        console.log('result: ', rows);
        if (foundUser) {
            res.send({ isAuthenticatedUser: true, loggedInUser:foundUser });
        }
        else {
            res.send({ isAuthenticatedUser: false });
        }
        if (err) throw err;
    });

});

// /*username:
//  * POST to adduser.
//  */
// router.post('/adduser', function(req, res) {
//     var db = req.db;
//     var collection = db.get('userlist');
//     collection.insert(req.body, function(err, result){
//         res.send(
//             (err === null) ? { msg: '' } : { msg: err }
//         );
//     });
// });

// /*
//  * DELETE to deleteuser.
//  */
// router.delete('/deleteuser/:id', function(req, res) {
//     var db = req.db;
//     var collection = db.get('userlist');
//     var userToDelete = req.params.id;
//     collection.remove({ '_id' : userToDelete }, function(err) {
//         res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
//     });
// });

module.exports = router;