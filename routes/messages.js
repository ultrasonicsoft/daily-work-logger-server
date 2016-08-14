var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const util = require('util');
var moment = require('moment');

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root'
});

/*
 * GET userlist.
 */
// router.get('/all', function (req, res) {
//     // var users  = [{id:1, name:'simon'}, {id:2,name:'balram'}];
//     // res.send(users);
//     var query = "SELECT Id, UserName,RoleId FROM `daily-work-logger-db`.users;"
//     connection.query(query, function (err, rows) {
//         console.log('result: ', rows);
//         res.send(rows);
//         if (err) throw err;
//     });
// });

/*
 * POST to adduser.
 */
router.post('/newMessage', function (req, res) {
    var newMessage = req.body;
    console.log(newMessage);

    var sentOn = moment(newMessage.sentOn, 'YYYY/MM/DD HH:mm:ss').format('YYYY-MM-DD HH:mm:ss');

    var query = util.format('CALL `daily-work-logger-db`.`createNewMessage`(\'%s\',\'%s\',%d,%d,%d);', newMessage.messageText,
        sentOn, newMessage.fromUserId, newMessage.toUserId, newMessage.status);
        
    console.log("query: ", query);

    connection.query(query, function (err, rows) {
        console.log('result: ', rows);
        if (rows) {
            res.send({ messageSent: true });
        }
        else {
            res.send({ messageSent: false });
        }
        if (err) throw err;
    });
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