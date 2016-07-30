var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    res.send({loginSuccessful:'true'});
});

// /*
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