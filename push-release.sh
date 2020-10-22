#!/bin/bash

set -e

UXNAME=<username>
UXPASS=<password>

# aquire token
TOKEN=$(curl -s -H "Content-Type: application/json" -X POST -d '{"username": "'${UXNAME}'", "password": "'${UXPASS}'"}' https://hub.docker.com/v2/users/login/ | jq -r .token)

rootDir=`pwd`

pushImage () {
	docker pull $1:$3 
	docker tag $1:$3 $2:$3
	docker push $2:$3
	docker rmi $2:$3
	docker rmi $1:$3
	echo ""
}


pushImageLatest () {
	docker pull $1:$3 
	docker tag $1:$3 $2:$3
	docker tag $1:$3 $2:latest
	docker push $2:$3
	docker push $2:latest
	docker rmi $2:latest
	docker rmi $2:$3
	docker rmi $1:$3
	echo ""
}

findRelease () {
	X=$(curl -s -H "Authorization: JWT ${TOKEN}"  -H "Content-Type: application/json" https://hub.docker.com/v2/repositories/$1/tags/$3 | jq ".images[0].digest")
	Y=$(curl -s -H "Authorization: JWT ${TOKEN}"  -H "Content-Type: application/json" https://hub.docker.com/v2/repositories/$2/tags/$3 | jq ".images[0].digest")
	if [ "$X" = "$Y" ]; then
	    echo "Hashes are equal. $1 $3"
	else
	   pushImage $1 $2 $3
	fi
}

findReleaseLatest () {
	X=$(curl -s -H "Authorization: JWT ${TOKEN}"  -H "Content-Type: application/json" https://hub.docker.com/v2/repositories/$1/tags/$3 | jq ".images[0].digest")
	Y=$(curl -s -H "Authorization: JWT ${TOKEN}"  -H "Content-Type: application/json" https://hub.docker.com/v2/repositories/$2/tags/$3 | jq ".images[0].digest")
	if [ "$X" = "$Y" ]; then
	    echo "Hashes are equal. $1 $3"
	else
	   pushImageLatest $1 $2 $3
	fi
}


#findReleaseLatest telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.4.0

# findReleaseLatest telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.4.0
findRelease telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.3.0
findRelease telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.2.0
findRelease telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.1.0
findRelease telefonicaiot/sigfox-iotagent fiware/sigfox-iotagent 1.0.0