 ECHO create network ...
 docker network create products-store

 ECHO create network ...
	
 docker run -d --name db --net products-store -p 27017:27017 mongodb

 docker run -d --name backend-api --net products-store -p 5001:80 -e  "ProductstoreDatabaseSettings__ConnectionString=mongodb://db:27017" ^
                                                                  -e  "ProductstoreDatabaseSettings__DatabaseName  productsstore"  backend
	
 docker run -d --name ui --net products-store -p 8080:80 ui