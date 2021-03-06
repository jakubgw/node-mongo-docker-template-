const http = require('http')


var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://mongodb:27017/";

  

  
const port = 3000


const requestHandler = (request : any, response: any) => {
  console.log(request.url)
  MongoClient.connect(url, function(err:any, client:any) {
    if (err) throw err;
    
    var db = client.db('test');  
    db.collection("collectionName").findOne({}, function(err:any, result:any) {
      if (err) throw err;
      
      response.end(result.a.toString())
      client.close();
    }); 
    
  });
}

const server = http.createServer(requestHandler)

server.listen(port, (err:any) => {
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`server is listening on ${port}`)
})