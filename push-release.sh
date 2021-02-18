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
		#echo push $1 $3
		pushImage $1 $2 $3
	fi
}



pushAll () {
	SOURCE=${1}
	NAME=${2}
	TAGS=$(curl -s https://hub.docker.com/v2/repositories/${SOURCE}/tags/)
	for row in $( echo $TAGS | jq -c '.results[]'); do
	    _jq() {
	     echo ${row} | jq -r ${1}
	    }
	    TAG=$(_jq '.name')
	    if [ $(_jq '.tag_status') == 'active' ]; then
		    case $TAG in [1-9]*)
		    	findRelease ${SOURCE} fiware/${NAME} $TAG
			esac 
		fi
	done
}

pushAll ging/fiware-draco draco
pushAll ging/fiware-idm idm
pushAll ging/fiware-pep-proxy pep-proxy
pushAll telefonicaiot/fiware-sth-comet sth-comet
pushAll telefonicaiot/fiware-cygnus cygnus-ngsi
#pushAll telefonicaiot/fiware-cygnus-ld cygnus-ld
pushAll telefonicaiot/perseo-fe perseo
pushAll telefonicaiot/perseo-core perseo-core
pushAll telefonicaiot/fiware-orion orion
pushAll telefonicaiot/sigfox-iotagent sigfox-iotagent
pushAll telefonicaiot/iotagent-json iotagent-json
pushAll telefonicaiot/iotagent-ul iotagent-ul
pushAll telefonicaiot/lightweightm2m-iotagent lightweightm2m-iotagent
