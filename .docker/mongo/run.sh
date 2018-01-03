#!/bin/bash

if [[ -e /.firstrun ]]; then
    mongoimport --host=mongodb --db test --collection collectionName --file /mongo/data.json  --jsonArray;
fi


rm -f /.firstrun