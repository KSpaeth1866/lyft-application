/*

Technical sample for Lyft application

"A small web application in one of the above languages (Python/Ruby/Node).
It only needs to accept a POST request to the route “/test” which accepts two
arguments “x” and “y” and returns a JSON object {“sum”: x+y}."

*/

// express backend
const express = require('express');
const app = express();

// bodyparser to read x and y
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

// test route
// takes "x", "y", sends back {sum: x+y}
app.post('/test', (req, res) => {
  res.send({sum: parseFloat(req.body.x) + parseFloat(req.body.y)})
})

// read port or set to 3000, launch server
let port = process.env.PORT || 3000
app.listen(port, () => {
  console.log(
    `
    \n\n****************************************\n\n
    \tApp running on port ${port}
    \n\n****************************************\n\n
    `
  )
})