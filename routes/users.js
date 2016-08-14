var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root'
});

/*
 * GET userlist.
 */
router.get('/all', function (req, res) {
    // var users  = [{id:1, name:'simon'}, {id:2,name:'balram'}];
    // res.send(users);
    var query = "SELECT Id, UserName,RoleId FROM `daily-work-logger-db`.users;"
    connection.query(query, function (err, rows) {
        console.log('result: ', rows);
        res.send(rows);
        if (err) throw err;
    });
});

/*
 * POST to adduser.
 */
router.post('/newMessage', function(req, res) {
    var newMessage = req.body;
    console.log(newMessage);
    res.send(200);
});

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