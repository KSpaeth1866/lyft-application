# Small Web App for Lyft Application

## Application page
[Software Engineering Apprenticeship](https://www.lyft.com/jobs/software-engineering-apprenticeship)

## Description
From the application:
"A small web application in one of the above languages (Python/Ruby/Node). It only needs to accept a POST request to the route “/test” which accepts two arguments “x” and “y” and returns a JSON object {“sum”: x+y}."

## Instructions to run
In the terminal:
1. Run `git clone https://github.com/KSpaeth1866/lyft-application.git`
1. Run `npm install`
1. Run `npm test`

Then submit a Post request (Postman is a good tool for this) to http://localhost:3000/test (the app defaults to port 3000, if you alter process.env.port this will change) with two arguments, x and y

## Notes on the original application
The original application only accepted `application/json` requests, this one accepts `application/x-www-form-urlencoded` for ease of testing.
Through exploration with Postman, the original application appeared to have the following properties.
1. Additional arguments are allowed but do not affect the result
    1. `{x: 4, y: 2, z: 5}` -> `{sum: 6}`
1. x and y are not optional arguments
    1. `{x: 4}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
1. x and y can be floats, but are interpreted as Math.floor(x) if positive and Math.ceil(x) if negative ("sum" is always an integer)
    1. `{x: 2.5, y: 4}` -> `{sum: 6}`
    1. `{x: -2.5, y: 4}` -> `{sum: 2}`
    1. `{x: 2.5, y: -4.1}` -> `{sum: -2}`
    1. `{x: 2.5, y: -4}` -> `{sum: -2}`
    1. `{x: 2.5, y: -3.9}` -> `{sum: -1}`
    1. `{x: -0.2, y: -2.8}` -> `{sum: -2}`
    1. `{x: -0, y: -3}` -> `{sum: -3}`
    1. `{x: 0.1, y: -3}` -> `{sum: -3}`
1. x and y can be negative, but if between 1 and -1 must be of the form "-0.a" or "0.a"
    1. `{x: -0.2, y: 1}` -> `{sum: 1}`
    1. `{x: -0.2, y: 0.9}` -> `{sum: 0}`
    1. `{x: -.2, y: 3}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
    1. `{x: .2, y: 3}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
1. x and y do not appear to have a length limit
    1. `{x: 0.27397345098375098734059827350987, y: 3}` -> `{sum: 3}`
    1. `{x: -0.27397345098375098734059827350987, y: 3}` -> `{sum: 3}`
1. x or y can be strings, but only non-decimal values. One can be a string while the other is a number so long as they meet the other requirements. The string can have spaces.
    1. `{x: "4", y: 2}` -> `{sum: 6}`
    1. `{x: "-4", y: 2}` -> `{sum: -2}`
    1. `{x: 4.0, y: "2"}` -> `{sum: 6}`
    1. `{x: 4.0, y: " 2 "}` -> `{sum: 6}`
    1. `{x: "4.0", y: 2}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
    1. `{x: "4.2", y: 2}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
    1. `{x: "-4.2", y: 2}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
    1. `{x: "d", y: 2}` -> `{message: The browser (or proxy) sent a request that this server could not understand.}`
