#!/bin/bash

# set -e

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
	# curl --silent "https://api.github.com/repos/$2/releases/latest?client_id=xxxx&client_secret=yyyy" | grep tag_name
	curl --silent "https://api.github.com/repos/$2/releases/latest" | grep tag_name
	cd $rootDir
	echo ""
}

displayReleaseDiff (){
	git diff --compact-summary --submodule=short  FIWARE_7.5..master
}

displayUpdatedTags (){
	git diff --compact-summary --submodule=short  FIWARE_7.5..releases
}


findRelease core/cygnus telefonicaid/fiware-cygnus 1.12.0
findRelease core/draco ging/fiware-draco 1.1.0
findRelease core/orion telefonicaid/fiware-orion 2.2.0
findRelease core/quantum-leap smartsdk/ngsi-timeseries-api 0.6
findRelease core/sth-comet telefonicaid/fiware-sth-comet 2.5.0

findRelease data-publication/apinf/apinf apinf/platform 0.58.0
findRelease data-publication/apinf/api-umbrella apinf/api-umbrella v0.15.0-apinf2.1
findRelease data-publication/business-api/billing-management FIWARE-TMForum/DSBILLINGMANAGEMENT v7.6.0
findRelease data-publication/business-api/business-api FIWARE-TMForum/Business-API-Ecosystem v7.6.0
findRelease data-publication/business-api/customer-management FIWARE-TMForum/DSCUSTOMER v7.6.0
findRelease data-publication/business-api/charging-backend FIWARE-TMForum/business-ecosystem-charging-backend v7.6.0
findRelease data-publication/business-api/logic-proxy FIWARE-TMForum/business-ecosystem-logic-proxy v7.6.0
findRelease data-publication/business-api/ordering-management FIWARE-TMForum/DSPRODUCTORDERING v7.6.0
findRelease data-publication/business-api/party-management FIWARE-TMForum/DSPARTYMANAGEMENT v7.6.0
findRelease data-publication/business-api/product-catalog FIWARE-TMForum/DSPRODUCTCATALOG2 v7.6.0
findRelease data-publication/business-api/product-inventory FIWARE-TMForum/DSPRODUCTINVENTORY v7.6.0
findRelease data-publication/business-api/rss FIWARE-TMForum/business-ecosystem-rss v7.6.0
findRelease data-publication/business-api/usage-management FIWARE-TMForum/DSUSAGEMANAGEMENT v7.6.0
findRelease data-publication/ckan-extensions/business-api-publisher FIWARE-TMForum/ckanext-baepublisher v0.5
findRelease data-publication/ckan-extensions/ckan-extensions conwetlab/FIWARE-CKAN-Extensions v7.4.0
findRelease data-publication/ckan-extensions/data-requests conwetlab/ckanext-datarequests v1.1.0
findRelease data-publication/ckan-extensions/oauth2 conwetlab/ckanext-oauth2 v0.6.1
findRelease data-publication/ckan-extensions/private-datasets conwetlab/ckanext-privatedatasets v0.4
findRelease data-publication/ckan-extensions/right-time-context conwetlab/ckanext-right_time_context v0.9
findRelease data-publication/ckan-extensions/wirecloud-dashboards conwetlab/ckanext-wirecloud_view v1.1.0
findRelease data-publication/idra opsilab/idra v1.3.1

findRelease iot-agents/iotagent-LoRaWAN Atos-Research-and-Innovation/IoTagent-LoRaWAN v1.2.0
findRelease iot-agents/iotagent-json telefonicaid/iotagent-json 1.9.0
findRelease iot-agents/iotagent-lightweightM2M telefonicaid/lightweightm2m-iotagent 1.0.0
findRelease iot-agents/iotagent-node-lib telefonicaid/iotagent-node-lib 2.8.1
findRelease iot-agents/iotagent-opcua Engineering-Research-and-Development/iotagent-opcua 1.2.0
findRelease iot-agents/iotagent-ultralight telefonicaid/iotagent-ul 1.8.0
findRelease iot-agents/OpenMTC OpenMTC/OpenMTC v1.3.0
findRelease iot-agents/iotagent-sigfox telefonicaid/sigfox-iotagent 1.1.0

findRelease processing/cosmos/cosmos ging/fiware-cosmos-orion-flink-connector FIWARE_7.6
findRelease processing/cosmos/examples ging/fiware-cosmos-orion-flink-connector-examples FIWARE_7.4
findRelease processing/fogflow/fogflow smartfog/fogflow FIWARE_7.6
findRelease processing/knowage/documentation KnowageLabs/Knowage-Documentation "latest"
findRelease processing/knowage/server KnowageLabs/Knowage-Server v6.3.3
findRelease processing/knowage/server-chef KnowageLabs/Knowage-Server-Chef 6.1.1
findRelease processing/knowage/server-docker KnowageLabs/Knowage-Server-Docker "latest"
findRelease processing/kurento/documentation Kurento/doc-fiware-readthedocs "latest"
findRelease processing/kurento/media-server Kurento/kurento-media-server 6.10.0
findRelease processing/kurento/media-server-docker Kurento/kurento-docker 6.8.0
findRelease processing/perseo/back-end telefonicaid/perseo-core 1.3.0
findRelease processing/perseo/front-end telefonicaid/perseo-fe 1.8.0
findRelease processing/wirecloud/ngsijs conwetlab/ngsijs v1.2.1
findRelease processing/wirecloud/wirecloud Wirecloud/wirecloud 1.2.0
findRelease processing/wirecloud/wirecloud-docker Wirecloud/docker-wirecloud "latest"


findRelease robotics/Fast-RTPS eProsima/Fast-RTPS v1.7.2
findRelease robotics/Micro-XRCE-DDS eProsima/Micro-XRCE-DDS v1.0.2


findRelease security/authzforce authzforce/server release-8.1.0
findRelease security/keyrock ging/fiware-idm FIWARE_7.6
findRelease security/wilma ging/fiware-pep-proxy FIWARE_7.6

findRelease third-party/domibus edelivery/domibus 4.0.2

