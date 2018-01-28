/*

Technical sample for Lyft application

"A small web application in one of the above languages (Python/Ruby/Node).
It only needs to accept a POST request to the route “/test” which accepts two
arguments “x” and “y” and returns a JSON object {“sum”: x+y}."

curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json'
curl -X POST http://localhost:3000/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json'

*/

// express server
const express = require('express');
const app = express();

// bodyparser to read x and y
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

// test route
// takes "x", "y", sends back {sum: x+y}
// see "Notes on the original application" in Readme for specific details
app.post('/test', (req, res) => {
  console.log(req.body.x, parseInt(req.body.x), typeof req.body.x);
  console.log(req.body.y, parseInt(req.body.y), typeof req.body.y);
  if (parseInt(req.body.x) && parseInt(req.body.y)) {
    res.status(200).send({
      sum: parseInt(req.body.x) + parseInt(req.body.y)
    })
  }
  else {
    res.status(400).send({
      message: `The browser (or proxy) sent a request that this server could not understand.`
    })
  }
})


app.use('/test', (req, res) => {
  res.status(405).send({
    message: "The method is not allowed for the requested URL."
  })
})

// read port or set to 3000, launch server
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(
    `
    \n\n****************************************\n\n
    \tApp running on port ${port}
    \n\n****************************************\n\n
    `
  )
})
