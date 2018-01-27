# Small Web App for Lyft Application

## Application page
[Software Engineering Apprenticeship](https://www.lyft.com/jobs/software-engineering-apprenticeship)

## Description
<<<<<<< HEAD
From the application:
"A small web application in one of the above languages (Python/Ruby/Node). It only needs to accept a POST request to the route “/test” which accepts two arguments “x” and “y” and returns a JSON object {“sum”: x+y}."

## Instructions to run
In the terminal:
1. Run `git clone https://github.com/KSpaeth1866/lyft-application.git`
1. Run `npm install`
1. Run `npm test`

Then submit a Post request (Postman is a good tool for this) to (http://localhost:3000/test) (the app defaults to port 3000, if you alter process.env.port this will change) with two arguments, x and y

## Notes on the original application
The original application has the following properties, which we replicate.
1. x and y are not optional arguments
    1. {x: 4} => {"message": "The browser (or proxy) sent a request that this server could not understand."}
1. x and y can be floats, but "sum" is an integer
    1. {x: 4, y: 2.5} => {sum: 6}
1. x and y can be negative
    1. {x: 4, y: -2.5} => {sum: 2}
1. Additional arguments are allowed but do not affect the result
    1. {x: 4, y: 2, z: 5} => {sum: 6}
=======
"A small web application in one of the above languages (Python/Ruby/Node). It only needs to accept a POST request to the route “/test” which accepts two arguments “x” and “y” and returns a JSON object {“sum”: x+y}."
