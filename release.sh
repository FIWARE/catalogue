#!/bin/bash

set -e

rootDir=`pwd`

git fetch
#git checkout releases
#git reset --hard origin/releases

findRelease () {
	echo $1
	curr=$3
	cd $1
	git fetch --tags

	[[ $curr = "latest" ]] && git reset --hard origin/master -q || git checkout $3 -q


	echo $curr
  	git rev-parse HEAD

	# git checkout $(git tag | tail -1)
	
	cd $rootDir
	echo ""
}

displayTag () {
	echo $1
	cd $1
	curl --silent "https://api.github.com/repos/$2/releases/latest" | grep tag_name
	cd $rootDir
	echo ""
}


findRelease core/orion telefonicaid/fiware-orion 2.0.0
findRelease core/cygnus ging/fiware-cygnus v2.0.0
findRelease core/sth-comet ging/fiware-sth-comet 2.4.0
findRelease core/quantum-leap smartsdk/ngsi-timeseries-api 0.4
findRelease data-publication/ckan conwetlab/FIWARE-CKAN-Extensions v6.4.0
findRelease data-publication/business-api FIWARE-TMForum/Business-API-Ecosystem v6.4.0
findRelease security/keyrock ging/fiware-idm 7.4.0
findRelease security/authzforce authzforce/server release-8.0.1
findRelease security/wilma ging/fiware-pep-proxy 7.4.0
findRelease iot-agents/iotagent-ultralight telefonicaid/iotagent-ul 1.7.0
findRelease iot-agents/iotagent-lightweightM2M telefonicaid/lightweightm2m-iotagent 0.2.1
findRelease iot-agents/iotagent-node-lib telefonicaid/iotagent-node-lib 2.7.0
findRelease iot-agents/iotagent-LoRaWAN Atos-Research-and-Innovation/IoTagent-LoRaWAN 0.1.0
findRelease iot-agents/iotagent-json telefonicaid/iotagent-json 1.8.0
findRelease iot-agents/OpenMTC OpenMTC/OpenMTC v1.1.0
findRelease robotics/Fast-RTPS eProsima/Fast-RTPS v1.6.0
findRelease processing/domibus edelivery/domibus 4.0
findRelease processing/cosmos/cosmos ging/fiware-cosmos-orion-flink-connector 1.0
findRelease processing/cosmos/examples ging/fiware-cosmos-orion-flink-connector-examples "latest"
findRelease processing/aeon/cloud-messaging-platform atos-ari-aeon/fiware-cloud-messaging-platform "latest"
findRelease processing/aeon/cloud-messaging-api atos-ari-aeon/fiware-cloud-messaging-api "latest"
findRelease processing/aeon/cloud-messaging-events-manager atos-ari-aeon/fiware-cloud-messaging-events-manager "latest"
findRelease processing/aeon/cloud-messaging-sdk atos-ari-aeon/fiware-cloud-messaging-sdk "latest"
findRelease processing/aeon/cloud-messaging-dashboard atos-ari-aeon/fiware-cloud-messaging-dashboard "latest"
findRelease processing/knowage/server KnowageLabs/Knowage-Server knowage-server-6.2.0
findRelease processing/knowage/documentation KnowageLabs/Knowage-Documentation "latest"
findRelease processing/knowage/server-docker KnowageLabs/Knowage-Server-Docker "latest"
findRelease processing/knowage/server-chef KnowageLabs/Knowage-Server-Chef 6.1.1
findRelease processing/fogflow/fogflow smartfog/fogflow v2.0
findRelease processing/fogflow/adapter smartfog/adapter "latest"
findRelease processing/kurento/media-server Kurento/kurento-media-server 6.8.0
findRelease processing/kurento/media-server-docker Kurento/kurento-docker 6.8.0
findRelease processing/kurento/documentation Kurento/doc-fiware-readthedocs 6.6.0
findRelease processing/wirecloud/wirecloud Wirecloud/wirecloud 1.1.4
findRelease processing/wirecloud/wirecloud-docker Wirecloud/docker-wirecloud "latest"
findRelease processing/perseo/back-end telefonicaid/perseo-core 1.2.0
findRelease processing/perseo/front-end telefonicaid/perseo-fe 1.7.0



