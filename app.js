// express server
const express = require('express');
const app = express();

// bodyparser to read x and y
const bodyParser = require('body-parser');
app.use(bodyParser.json());

// catch json parsing errors
app.use((error, req, res, next) => {
  if (error) {
    res.status(400).send({
      message: `The browser (or proxy) sent a request that this server could not understand.`
    })
  }
})

// takes "x", "y", sends back {sum: x+y}
// see "Notes on the original application" in Readme for specific details
app.post('/test', (req, res) => {

  // check if we have both x and y
  let bool = req.body.x != null && req.body.y != null;
  // check if parseInt of x, y evaluates to a number
  bool = bool && (typeof parseInt(req.body.x) == 'number') && (typeof parseInt(req.body.x) == 'number');
  // check that each parseInt-ed x, y is actually a number, not NaN
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
})

// get/put/etc. do not result in anything
app.use('/test', (req, res) => {
  res.status(405).send({
    message: `The method is not allowed for the requested URL.`
  })
})

// catch other uncaught error
app.use((error, req, res, next) => {
  if (error) {
    res.status(400).send({
      message: `The browser (or proxy) experienced an error.`
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
