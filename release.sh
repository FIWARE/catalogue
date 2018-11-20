#!/bin/bash

set -e

rootDir=`pwd`

#git fetch
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

displayReleaseDiff (){
	git diff --compact-summary --submodule=short  FIWARE_7.4..master
}

displayUpdatedTags (){
	git diff --compact-summary --submodule=short  FIWARE_7.4..releases
}


findRelease core/cygnus telefonicaid/fiware-cygnus 1.9.0
findRelease core/orion telefonicaid/fiware-orion 2.0.0
findRelease core/quantum-leap smartsdk/ngsi-timeseries-api 0.4
findRelease core/sth-comet ging/fiware-sth-comet 2.3.0

findRelease data-publication/apinf/apinf apinf/platform 0.58.0
findRelease data-publication/apinf/api-umbrella apinf/api-umbrella v0.15.0-apinf2.1
findRelease data-publication/business-api/billing-management FIWARE-TMForum/DSBILLINGMANAGEMENT v7.4.0
findRelease data-publication/business-api/business-api FIWARE-TMForum/Business-API-Ecosystem v7.4.0
findRelease data-publication/business-api/customer-management FIWARE-TMForum/DSCUSTOMER v7.4.0
findRelease data-publication/business-api/charging-backend FIWARE-TMForum/business-ecosystem-charging-backend v7.4.0
findRelease data-publication/business-api/logic-proxy FIWARE-TMForum/business-ecosystem-logic-proxy v7.4.0
findRelease data-publication/business-api/ordering-management FIWARE-TMForum/DSPRODUCTORDERING v7.4.0
findRelease data-publication/business-api/party-management FIWARE-TMForum/DSPARTYMANAGEMENT v7.4.0
findRelease data-publication/business-api/product-catalog FIWARE-TMForum/DSPRODUCTCATALOG2 v7.4.0
findRelease data-publication/business-api/product-inventory FIWARE-TMForum/DSPRODUCTINVENTORY v7.4.0
findRelease data-publication/business-api/rss FIWARE-TMForum/business-ecosystem-rss v7.4.0
findRelease data-publication/business-api/usage-management FIWARE-TMForum/DSUSAGEMANAGEMENT v7.4.0
findRelease data-publication/ckan-extensions/business-api-publisher FIWARE-TMForum/ckanext-baepublisher v0.5
findRelease data-publication/ckan-extensions/ckan-extensions conwetlab/FIWARE-CKAN-Extensions v7.4.0
findRelease data-publication/ckan-extensions/data-requests conwetlab/ckanext-datarequests v1.1.0
findRelease data-publication/ckan-extensions/oauth2 conwetlab/ckanext-oauth2 v0.6.1
findRelease data-publication/ckan-extensions/private-datasets conwetlab/ckanext-privatedatasets v0.4
findRelease data-publication/ckan-extensions/right-time-context conwetlab/ckanext-right_time_context v0.9
findRelease data-publication/ckan-extensions/wirecloud-dashboards conwetlab/ckanext-wirecloud_view v1.1.0
findRelease data-publication/idra opsilab/idra v1.1.0

findRelease iot-agents/iotagent-LoRaWAN Atos-Research-and-Innovation/IoTagent-LoRaWAN 0.1.0
findRelease iot-agents/iotagent-json telefonicaid/iotagent-json 1.8.0
findRelease iot-agents/iotagent-lightweightM2M telefonicaid/lightweightm2m-iotagent 0.4.0
findRelease iot-agents/iotagent-node-lib telefonicaid/iotagent-node-lib 2.7.0
findRelease iot-agents/iotagent-opcua Engineering-Research-and-Development/iotagent-opcua 1.0.0
findRelease iot-agents/iotagent-ultralight telefonicaid/iotagent-ul 1.7.0
findRelease iot-agents/OpenMTC OpenMTC/OpenMTC v1.1.0

findRelease processing/aeon/cloud-messaging-api atos-ari-aeon/fiware-cloud-messaging-api "latest"
findRelease processing/aeon/cloud-messaging-dashboard atos-ari-aeon/fiware-cloud-messaging-dashboard "latest"
findRelease processing/aeon/cloud-messaging-events-manager atos-ari-aeon/fiware-cloud-messaging-events-manager "latest"
findRelease processing/aeon/cloud-messaging-platform atos-ari-aeon/fiware-cloud-messaging-platform "latest"
findRelease processing/aeon/cloud-messaging-sdk atos-ari-aeon/fiware-cloud-messaging-sdk "latest"
findRelease processing/cosmos/cosmos ging/fiware-cosmos-orion-flink-connector FIWARE_7.4
findRelease processing/cosmos/examples ging/fiware-cosmos-orion-flink-connector-examples FIWARE_7.4
findRelease processing/domibus edelivery/domibus 4.0
findRelease processing/fogflow/adapter smartfog/adapter "latest"
findRelease processing/fogflow/fogflow smartfog/fogflow v2.0
findRelease processing/knowage/documentation KnowageLabs/Knowage-Documentation "latest"
findRelease processing/knowage/server KnowageLabs/Knowage-Server v6.2.2
findRelease processing/knowage/server-chef KnowageLabs/Knowage-Server-Chef 6.1.1
findRelease processing/knowage/server-docker KnowageLabs/Knowage-Server-Docker "latest"
findRelease processing/kurento/documentation Kurento/doc-fiware-readthedocs 6.6.0
findRelease processing/kurento/media-server Kurento/kurento-media-server 6.8.1
findRelease processing/kurento/media-server-docker Kurento/kurento-docker 6.8.0
findRelease processing/perseo/back-end telefonicaid/perseo-core 1.2.0
findRelease processing/perseo/front-end telefonicaid/perseo-fe 1.7.0
findRelease processing/wirecloud/wirecloud Wirecloud/wirecloud 1.2.0
findRelease processing/wirecloud/wirecloud-docker Wirecloud/docker-wirecloud "latest"

findRelease robotics/Fast-RTPS eProsima/Fast-RTPS v1.6.0

findRelease security/authzforce authzforce/server release-8.0.1
findRelease security/keyrock ging/fiware-idm 7.4.0
findRelease security/wilma ging/fiware-pep-proxy 7.5.0

