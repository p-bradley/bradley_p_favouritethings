const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, name, icon, description FROM tbl_things_preview";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { things: result }); 
    })
})
// this resolves to localhost:3000/anything (whatever you put after the slash in the location bar)
router.get('/:id', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_things WHERE FavID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // convert the social property into an array
        // before we send it thru
        // map is an array method that lets you map one value to another (convert it)

        res.json(result[0]);
    })
})

module.exports = router;