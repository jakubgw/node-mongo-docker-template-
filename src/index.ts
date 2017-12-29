const http = require('http')
var mongoose = require("mongoose");

const port = 3000


//DB setup
//mongoose.connect("mongodb://mongo:27017");

const requestHandler = (request : any, response: any) => {
  console.log(request.url)
  response.end('Hello Node.js Server!')
}

const server = http.createServer(requestHandler)

server.listen(port, (err:any) => {
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`server is listening on ${port}`)
})