#!/bin/bash
echo '

SUITE 1

' >> test.txt;

echo '
start {"x": 4, "y": 2, "z": 3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 4, "y": 2, "z": 3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 4, "y": 2, "z": 3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 6}
' >> test.txt;

echo '

SUITE 2

' >> test.txt;

echo 'start {"x": 4}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 4}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 4}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo '

SUITE 3

' >> test.txt;

echo 'start {"x": 2.5, "y": 4}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 2.5, "y": 4}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 2.5, "y": 4}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 6}
' >> test.txt;

echo 'start {"x": -2.5, "y": 4}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -2.5, "y": 4}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -2.5, "y": 4}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 2}
' >> test.txt;

echo 'start {"x": 2.5, "y": -4.1}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 2.5, "y": -4.1}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 2.5, "y": -4.1}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -2}
' >> test.txt;

echo 'start {"x": 2.5, "y": -4}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 2.5, "y": -4}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 2.5, "y": -4}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -2}
' >> test.txt;

echo 'start {"x": 2.5, "y": -3.9}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 2.5, "y": -3.9}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 2.5, "y": -3.9}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -1}
' >> test.txt;

echo 'start {"x": -0.2, "y": -2.8}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -0.2, "y": -2.8}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -0.2, "y": -2.8}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -2}
' >> test.txt;

echo 'start {"x": -0, "y": -3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -0, "y": -3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -0, "y": -3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -3}
' >> test.txt;

echo 'start {"x": 0.1, "y": -3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 0.1, "y": -3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 0.1, "y": -3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -3}
' >> test.txt;

echo '

SUITE 4

' >> test.txt;

echo 'start {"x": -0.2, "y": 1}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -0.2, "y": 1}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -0.2, "y": 1}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 1}
' >> test.txt;

echo 'start {"x": -0.2, "y": 0.9}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -0.2, "y": 0.9}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -0.2, "y": 0.9}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 0}
' >> test.txt;

echo 'start {"x": -.2, "y": 3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -.2, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -.2, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo 'start {"x": .2, "y": 3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": .2, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": .2, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo '

SUITE 5

' >> test.txt;

echo 'start {"x": 0.27397345098375098734059827350987, "y": 3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 0.27397345098375098734059827350987, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 0.27397345098375098734059827350987, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 3}
' >> test.txt;

echo 'start {"x": -0.27397345098375098734059827350987, "y": 3}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": -0.27397345098375098734059827350987, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": -0.27397345098375098734059827350987, "y": 3}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 3}
' >> test.txt;

echo '

SUITE 6

' >> test.txt;

echo 'start {"x": "4", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "4", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "4", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 6}
' >> test.txt;

echo 'start {"x": "-4", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "-4", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "-4", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": -2}
' >> test.txt;

echo 'start {"x": 4.0, "y": "2"}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 4.0, "y": "2"}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 4.0, "y": "2"}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 6}
' >> test.txt;

echo 'start {"x": 4.0, "y": " 2 "}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": 4.0, "y": " 2 "}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": 4.0, "y": " 2 "}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"sum": 6}
' >> test.txt;

echo 'start {"x": "4.0", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "4.0", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "4.0", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo 'start {"x": "4.2", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "4.2", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "4.2", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo 'start {"x": "-4.2", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "-4.2", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "-4.2", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo 'start {"x": "d", "y": 2}' >> test.txt;
curl -X POST https://lyft-interview-test.herokuapp.com/test --data '{"x": "d", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X POST http://localhost:3000/test --data '{"x": "d", "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The browser (or proxy) sent a request that this server could not understand.}
' >> test.txt;

echo '

SUITE 7

' >> test.txt;

echo 'get request {"x": 4, "y": 2}' >> test.txt;
curl -X GET https://lyft-interview-test.herokuapp.com/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X GET http://localhost:3000/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The method is not allowed for the requested URL.}
' >> test.txt;

echo 'put request {"x": 4, "y": 2}' >> test.txt;
curl -X PUT https://lyft-interview-test.herokuapp.com/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json' >> test.txt;
curl -X PUT http://localhost:3000/test --data '{"x": 4, "y": 2}' -H 'Content-Type: application/json' >> test.txt;
echo '
should be {"message": The method is not allowed for the requested URL.}
' >> test.txt;
