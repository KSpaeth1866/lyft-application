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
// app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.use((error, req, res, next) => {
  if (error) {
    res.status(400).send({
      message: `The browser (or proxy) sent a request that this server could not understand.`
    })
  }
})

// test route
// takes "x", "y", sends back {sum: x+y}
// see "Notes on the original application" in Readme for specific details
app.post('/test', (req, res) => {
  console.log(req.body);
  console.log(parseInt(req.body.x), typeof parseInt(req.body.x), !isNaN(parseInt(req.body.x)));
  console.log(parseInt(req.body.y), typeof parseInt(req.body.y), !isNaN(parseInt(req.body.y)));

  // check if we have both x and y
  let bool = req.body.x != null && req.body.y != null;
  // check parseInt evaluates to a number
  bool = bool && (typeof parseInt(req.body.x) == 'number') && (typeof parseInt(req.body.x) == 'number');
  // check that number is actually a number, not NaN
  bool = bool && !isNaN(parseInt(req.body.x)) && !isNaN(parseInt(req.body.y))

  if (bool) {
    res.status(200).send({
      sum: parseInt(req.body.x) + parseInt(req.body.y)
    })
  }
  else {
    res.status(400).send({
      message: `The browser (or proxy) sent a request that this server could not understand.`
    })
  }
  // res.send({check: 'check'})
})


app.use('/test', (req, res) => {
  res.status(405).send({
    message: "The method is not allowed for the requested URL."
  })
})

app.use((error, req, res, next) => {
  if (error) {
    res.status(400).send({
      message: `Error.`
    })
  }
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
