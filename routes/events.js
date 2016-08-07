var express = require('express');
const util = require('util');
var moment = require('moment');

var router = express.Router();
// Database
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root'
});

router.post('/createNewEvent', function (req, res) {
    console.log(req.body);
    var newEvent = req.body;
    if (connection) {
        console.log("connection is open");
    }
    else {
        console.log("connection is closed");
    }
    var startDate = moment(newEvent.startDate, 'YYYY/MM/DD HH:mm:ss').format('YYYY-MM-DD HH:mm:ss');
    console.log('formatted date: ' + startDate);
    var endDate = moment(newEvent.endDate, 'YYYY/MM/DD HH:mm:ss').format('YYYY-MM-DD HH:mm:ss');
    console.log('formatted date: ' + endDate);

    var query = util.format('CALL `daily-work-logger-db`.`add_new_event`(\'%s\',\'%s\',\'%s\',\'%s\');',newEvent.id,
        startDate, endDate, newEvent.description ); 
    console.log("query: ", query);

    connection.query(query, function (err, rows) {
        console.log('result: ', rows);
        if (rows) {
            res.send({ newEventAdded: true});
        }
        else {
            res.send({ newEventAdded: false });
        }
        if (err) throw err;
    });

});

module.exports = router;