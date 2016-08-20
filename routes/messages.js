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
router.get('/received/:userId', function (req, res) {
    var userId = req.params.userId;
    var query = "CALL `daily-work-logger-db`.`getAllReceivedMessages`(" + userId + ");"
    connection.query(query, function (err, rows) {
        console.log('result: ', rows[0]);
        res.send(rows[0]);
        if (err) throw err;
    });
});

router.get('/messageThread/:messageId', function (req, res) {
    var messageId = req.params.messageId;
    var query = "CALL `daily-work-logger-db`.`getMessageThread`(" + messageId + ");"
    connection.query(query, function (err, rows) {
        console.log('result: ', rows[0]);
        res.send(rows[0]);
        if (err) throw err;
    });
});

router.get('/sent/:userId', function (req, res) {
    var userId = req.params.userId;
    var query = "CALL `daily-work-logger-db`.`getAllSentMessages`(" + userId + ");"
    connection.query(query, function (err, rows) {
        console.log('result: ', rows[0]);
        res.send(rows[0]);
        if (err) throw err;
    });
});

/*
 * POST to adduser.
 */
router.post('/newMessage', function (req, res) {
    var newMessage = req.body;
    console.log(newMessage);

    var sentOn = moment(newMessage.sentOn, 'YYYY/MM/DD HH:mm:ss').format('YYYY-MM-DD HH:mm:ss');

    var query = util.format('CALL `daily-work-logger-db`.`createNewMessage`(\'%s\',\'%s\',\'%s\',%d,%d,%d);', newMessage.subject, newMessage.messageText,
        sentOn, newMessage.fromUserId, newMessage.toUserId, newMessage.isRead);

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


/*
 * POST to adduser.
 */
router.post('/reply', function (req, res) {
    var replyMessage = req.body;
    console.log(replyMessage);

    var sentOn = moment(replyMessage.sentOn, 'YYYY/MM/DD HH:mm:ss').format('YYYY-MM-DD HH:mm:ss');

    var query = util.format('CALL `daily-work-logger-db`.`replyMessage`(\'%s\',\'%s\',%d, %d);',
         replyMessage.messageText, sentOn, replyMessage.Id,replyMessage.fromUserId);

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

router.post('/markRead', function (req, res) {
    var messageDetails = req.body;
    console.log(messageDetails);

    var query = util.format('CALL `daily-work-logger-db`.`setMessageReadStatus`(%d,%d);', messageDetails.messageId, true);

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