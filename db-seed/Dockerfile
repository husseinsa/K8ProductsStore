FROM mongo:3.6.1-jessie
COPY init.json /init.json
CMD mongoimport --host mongodb --db productsstore --collection products --type json --file ./init.json --jsonArray 