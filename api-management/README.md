# API Management, Data Publication and Monetization

Publishing and consuming open data is a cornerstone for the development of applications and the creation of an
innovation ecosystem. In this regard, this section explains how users (both end users and developers) can expose their
data publishing it in CKAN, the Open Data publication GE.

To learn more about Data Publication, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/data-publication/introduction/)

<a name="apinf"/>

## :seedling: APInf (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/api-umbrella.svg)
![](https://img.shields.io/github/release-date/FIWARE/api-umbrella.svg)
![](https://img.shields.io/github/commits-since/FIWARE/api-umbrella/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/api-umbrella) | :whale: [Docker Hub](https://hub.docker.com/u/apinf/platform) | :books: [Documentation](https://apinf-fiware.readthedocs.io/en/latest/) | :page_facing_up: [Site](https://apinf.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/data-publication/apinf) |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------ |


### What is APInf?

The APInf API Management Framework is a Smart City orchestrator to be used together with other FIWARE enablers. APInf
integrates with FIWARE core technologies, such as [Identity Management](https://fiware-idm.readthedocs.io/en/latest/),
[NGSI v2](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
and [Business API Ecosystem](https://business-api-ecosystem.rtfd.io/) along with [API Umbrella](https://apiumbrella.io/)
to offer a comprehensive toolset to let various API Owners to run business with their APIs. Public market place is one
of the essential GUI tools to help API Owners to reach their customer with the showcase.

The APInf API Management Framework is a highly extendable and can bring huge benefits to managed APIs - such as NGSI
based interfaces like FIWARE Context Broker instances. This extends opportunities to setup a complete IoT cloud for
Smart Cities using FIWARE technologies alone. Both right-time data and historical data will be available for software
developers to build Smart Applications.

### Why use APInf?

The APInf API Management Framework is a central part of the FIWARE platform combining with other Generic Enablers in an
offering a dashboard for all application developers. The business tools of the framework help API Owners to run their
API business. This helps cities to distribute digital technology in small pieces in order to let local small software
companies to attend in building the services to their home city. The support is close and this approach creates jobs for
local people, which in turn generate move tax money for the city to develop better digital services to the citizens.

<a name="coatrack"/>

## :seedling: CoatRack (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](./README.md)
![License](https://img.shields.io/github/license/coatrack/coatrack.svg)
![](https://img.shields.io/github/last-commit/coatrack/coatrack.svg)
![](https://img.shields.io/github/commits-since/coatrack/coatrack/latest.svg)

| :octocat: [Git Repository](https://github.com/coatrack/coatrack/) | :whale: [Docker Hub](https://hub.docker.com/r/coatrack/admin/) | :books: [Documentation](https://github.com/coatrack/coatrack/wiki) | :dart: [Roadmap](https://github.com/coatrack/coatrack/wiki/roadmap.md) |
| ----------------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------------- |


### What is CoatRack?

CoatRack is a framework of managed backend-to-backend communication via REST services, consisting of distributed,
lightweight API gateways and a centralized web application to generate and administer those API gateways.

CoatRack can facilitate your work if you have existing REST APIs and you want to do one (or more) of the following:

-   monitoring the access to your APIs,
-   authentication/authorization of calls to your APIs via API keys,
-   monetization of API calls, based on pay-per-call rules or flat rate monetization.

### Why use CoatRack?

If your use case includes management of backend-to-backend communication via REST APIs, for example when offering
backend services to third parties, some common boilerplate work is required in addition to developing the actual service
API.

Coatrack reduces the overhead in implementing common tasks such as:

-   mechanisms for authentication/authorisation,
-   providing access credentials to the users,
-   monitoring calls to the API,
-   generating statistics.

This allows development teams to concentrate on building and maintaining the features of their own API as a product,
without spending time on ancillary features.

<a name="apollo"/>

### :seedling: Endpoint-Auth-Service

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/endpoint-auth-service.svg)
![](https://img.shields.io/github/release-date/FIWARE/endpoint-auth-service.svg)
![](https://img.shields.io/github/commits-since/FIWARE/endpoint-auth-service/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/endpoint-auth-service) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/endpoint-configuration-service) | :books: [Documentation](https://github.com/FIWARE/endpoint-auth-service/README.md) | :dart: **T.B.D** |
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |


#### What is Endpoint-Auth-Service?

In various use-cases, there is a need to apply authentication or authorization to outgoing requests for components that 
do not handle this themselves - for example notifications in NGSI-LD brokers. This service provides that by adding an 
envoy-proxy as sidecar to the component that gets forwarded all outgoing requests via ip-tables. The sidecar-proxy does
request auth-information from the auth-provider and adds it to the requests accordingly. The endpoints to be handled and 
there auth-information can be configured through endpoint-configuration-service.

#### Why use the Endpoint-Auth-Service?

Within data spaces, outgoing requests will need to be annotated as legitimate traffic coming from a specific trusted participant
from within the data space. The Endpoint-Auth-Service does this work automatically and the architecture allows separation of
the actual authentication flows from the proxy itself, thus giving more flexibility in terms of technology and reduces the complexity
of the code inside the proxy.

<a name="kong-plugins"/>

### :seedling: FIWARE Kong Plugins 

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/kong-plugins-fiware.svg)
![](https://img.shields.io/github/release-date/FIWARE/kong-plugins-fiware.svg)
![](https://img.shields.io/github/commits-since/FIWARE/kong-plugins-fiware/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/kong-plugins-fiware) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/kong) | :books: [Documentation](https://github.com/FIWARE/kong-plugins-fiware/README.md) | :dart: **T.B.D**|
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |


#### What are FIWARE Kong Plugins ?

Kong is a popular cloud-native API gateway acting as a reverse proxy ,that lets you manage, configure, and route requests to your APIs.
The functionality of Kong can be extended through the use of plugins, allowing developers to introduce new security functionality within a 
pre-existing API gateway framework

The FIWARE Kong plugins offer targeted extensions to the existing framework simplifying connections to various components which are commonly
used as part of the FIWARE Ecosystem (e.g. Keyrock, Keycloak)

#### Why use the FIWARE Kong Plugins ?

When creating a FIWARE based system, it is necessary to introduce a security system to protect your data. FIWARE is agnostic to the security
stack implemented in the system, but through using Kong it is possible to connect to the authentication and authorization mechanims of existing 
IDMs, PDPs etc.
