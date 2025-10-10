DIR=$(dirname "$0")
$DIR/stellio-api-gateway.sh $@                   
$DIR/stellio-search-service.sh $@  
$DIR/stellio-subscription-service.sh $@  
