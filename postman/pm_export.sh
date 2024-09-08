curl -X GET "https://api.getpostman.com/collections/$COLL_UID" \
-H "x-Api-Key: $API_KEY" \
-o "postman/resources/$PREFIX.postman_collection.json"

curl -X GET "https://api.getpostman.com/environments/$ENV_UID" \
-H "x-Api-Key: $API_KEY" \
-o "postman/resources/$PREFIX.postman_environment.json"