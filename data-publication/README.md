# API Management, Data Publication and Monetization

Publishing and consuming open data is a cornerstone for the development of
applications and the creation of an innovation ecosystem. In this regard, this
section explains how users (both end users and developers) can expose their data
publishing it in CKAN, the Open Data publication GE.

To learn more about Data Publication, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/data-publication/introduction/)

## Extensions to CKAN

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/data-publication.svg)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/conwetlab/FIWARE-CKAN-Extensions.svg)
![](https://img.shields.io/github/release-date/conwetlab/FIWARE-CKAN-Extensions.svg)
![](https://img.shields.io/github/commits-since/conwetlab/FIWARE-CKAN-Extensions/latest.svg)

| :octocat: [Git Repository](https://github.com/conwetlab/FIWARE-CKAN-Extensions) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/ckan-extended/) | :books: [Documentation](https://fiware-ckan-extensions.rtfd.io/) |  :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/data-publication/ckan) |
|---|---|---|---|

### What is Extensions to CKAN?

A set of CKAN extensions, developed within FIWARE, which integrates this data
portal platform with the main FIWARE GEs, enhancing the default CKAN behaviour
with improved access control, publication of right-time context data, and rich
visualization features.

In particular, the following extensions are being provided:

-   OAuth2: This extension enables the integration of CKAN with an external
    OAuth2 Identity Manager (e.g The FIWARE IdM)
-   Private Datasets: This extension improves the default dataset permissions
    features provided by CKAN by enabling to create protected datasets which can
    be accessed by a set of users included in an access list
-   NGSI View: This extension enables the publication of right-time context data
    as dataset resources by allowing to define them as NGSI v2 queries to a
    Context Broker
-   BAE Publisher: This extension simplifies the monetization of private
    datasets by enabling the creation of products and offerings in the Business
    API Ecosystem GE directly using the dataset information
-   WireCloud View: This extension allows to embed WireCloud (Application Mashup
    GEri) dashboards as dataset resources views, enabling the creation of rich
    and highly customizable visualizations for the published data
-   Data Requests: This extension includes a new section in CKAN intended to
    allow users of the platform to ask for data which is not yet published

### Why use Extensions to CKAN?

CKAN is one of the most extended Open Data publication platforms and is becoming
the de-fact standard for data publication in Europe. Moreover, CKAN is an open
source platform which means it can be easily adapted and expanded.

In this regard, the provided extensions integrate CKAN with the FIWARE platform,
enabling the right-time context information served by a context broker to be
published as dataset resources, making it easier to be discovered and consumed.

In addition, the integration of the FIWARE Security and Business Frameworks
provide an enriched access control and enable explicit acceptance of data terms
and conditions, usage accounting, or data monetization

Finally, the integration with WireCloud let the data providers to create and
customize rich visualizations for their data, without the need of installing new
extensions of restarting the platform.

### Quality Assurance

This project is part of [FIWARE](https://fiware.org/) and has been rated as
follows:

-   **Version Tested:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.docCompleteness&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.timeToCharge&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.failureRate&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.scalability&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.performance&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.stability&colorB=blue)

## Business API Ecosystem

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/data-monetization.svg)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/FIWARE-TMForum/Business-API-Ecosystem.svg)
![](https://img.shields.io/github/release-date/FIWARE-TMForum/Business-API-Ecosystem.svg)
![](https://img.shields.io/github/commits-since/FIWARE-TMForum/Business-API-Ecosystem/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE-TMForum/Business-API-Ecosystem) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/business-api-ecosystem) |  :books: [Documentation](https://business-api-ecosystem.rtfd.io/)  | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/data-publication/business-api) |
|---|---|---|---|

### What is the Business API Ecosystem?

The Business API Ecosystem GE is the result of the collaboration between FIWARE
and the TMForum. In this regard, the Business API Ecosystem GE is a joint
component made up by integrating the FIWARE Business Framework with a set of
standard APIs (and its reference implementations) provided by the TMForum in its
TMF API ecosystem.

This component allows the monetization of different kind of assets (both digital
and physical) during the whole service life cycle, from offering creation to its
charging, accounting and revenue settlement and sharing. In this way, the
Business API Ecosystem provides sellers the means for managing, publishing, and
generating revenue of they products, apps, data, and services.

By using the Business API Ecosystem you have access to the following key
features:

-   Support for the management of catalogs, products, and offering
-   Support for rich pricing models, including recurring payments, pay-per-use,
    etc.
-   Support for accounting callbacks
-   Support for billing and charging
-   Integrated support for PayPal, including customer charges and seller
    payments
-   Support for revenue sharing, including models with multiple stakeholders
    involved

The Business API Ecosystem exposes its complete functionality through TMForum
standard APIs; concretely, it includes the catalog management, ordering
management, inventory management, usage management, billing, customer, and party
APIs.

### Why use the Business API Ecosystem?

In those fields where it is expected to create a real ecosystem of apps, data,
and services (such as Smart Cities), offering third parties a way to enrich
existing services and data, and enable monetization, is a key factor. In this
regard, the integrated support for pricing (including pay-per-use modalities),
accounting, charging, billing and revenue sharing offered by the Business API
Ecosystem can position it one step ahead of the current market.

Additionally, the TMForum APIs are design to enable repeatable and flexible
integration among operations and management systems, making it easier to create,
build and operate complex innovative services. The Business API Ecosystem
exposes its functionality using the standard TMForum APIs; therefore, it takes
advantage of the benefits on operation and management offered by such standards,
allowing companies that plan to offer data and apps in such ecosystem to not
adapt their systems ad-hoc.

Business API Ecosystem Open
[Specification](https://forge.fiware.org/plugins/mediawiki/wiki/fiware/index.php/FIWARE.OpenSpecification.Apps.BusinessAPIEcosystem)

Biz Ecosystem RI is an implementation of the FIWARE/TMForum Business API
Ecosystem Generic Enabler. More specifically, the Biz Ecosystem RI implements
the following APIs and Open Specifications:

-   [Open API Specification](https://fiware-tmforum.github.io/Business-API-Ecosystem/)

### Quality Assurance

This project is part of [FIWARE](https://fiware.org/) and has been rated as
follows:

-   **Version Tested:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.docCompleteness&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.timeToCharge&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.failureRate&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.scalability&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.performance&colorB=blue)
    ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.stability&colorB=blue)

## :new: Idra (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/data-publication.svg)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/OPSILab/Idra.svg)
![](https://img.shields.io/github/release-date/OPSILab/Idra.svg)
![](https://img.shields.io/github/commits-since/OPSILab/Idra/latest.svg) 

| :octocat: [Git Repository](https://github.com/OPSILab/Idra) | :whale: [Docker Hub](https://hub.docker.com/u/idraopendata/idra) |   :books: [Documentation](https://idra.rtfd.io/) | :page_facing_up: [Site](https://idra.eng.it/) |
|---|---|---|---|

### What is Idra?

Idra is a web application able to federate existing Open Data Management Systems
(ODMS) based on different technologies providing a unique access point to search
and discover open datasets coming from heterogeneous sources. Idra uniforms
representation of collected open datasets, thanks to the adoption of
international standards (DCAT-AP) and provides a set of RESTful APIs to be used
by third party applications.

Idra supports natively ODMS based on [CKAN](https://ckan.org/),
[DKAN](https://getdkan.org/), [Socrata](https://socrata.com/), Orion Context
Broker
([NGSI v2](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json))
and many other technologies: Idra provides also a set of APIs to federate ODMS
not natively supported. In addition, it is possible to federate generic open
data portals, that don't expose an API, using the web scraping functionality or
providing a dump file of the datasets in
[DCAT-AP](https://joinup.ec.europa.eu/solution/dcat-application-profile-data-portals-europe)
format. Moreover Idra provides a [SPARQL](https://www.w3.org/TR/sparql11-query/)
endpoint in order to perform queries on 5 stars RDF
[linked open data](https://dvcs.w3.org/hg/gld/raw-file/default/glossary/index.html)
collected from federated ODMS and allows to easily create charts based on
federated open datasets.

### Why use Idra?

One of the most relevant problems that limits to adoption and usage of open data
is related to technology and standard fragmentation: every entity that wants to
provide open data (e.g. Public Administration) uses different platforms and
formats for their publication. This issue represents a barrier for the user that
wants to search for open data, and for third-party applications that are not
able to simply access and reuse it. Idra is an open source platform that
provides a unique access point to open datasets coming from heterogeneous ODMS
(Open Data Management System), such as portals provided by Municipalities and
PAs.

The adoption and usage of Idra can have direct benefits for different
stakeholders:

#### Benefits for the Public Administrations:

-   Standardise open data exposing it through open API and standard models
    (DCAT_AP) compliant with European guidelines. The API could be harvested by
    other open data federation portals (e.g. European Data portal)
-   Provide to the citizen, with minimum effort, new functionalities not
    existent in their native portals (e.g. SPARQL queries, graphical
    visualisation of datasets etc)
-   Improve visibility because their data are part of a federation potentially
    accessible by a larger number of users

#### Benefits for the citizens

-   Use a single access point for the open data of different entities avoiding
    problems related to find and use heterogeneous open data portals
-   Access to advanced search and visualisation functionalities not existent in
    the original portals

#### Benefits for companies

-   Access to a large number of open datasets in a unique and standard way
    together with data visualisation and analytics functionalities for different
    scopes (e.g. Statistics, sector-specific data research, data reuse to build
    innovative and added-value application) )

The **Idra** project is part of [FIWARE](https://fiware.org/) and will be rated
as part of the next release.

## :new: APInf (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/apinf/platform.svg)
![](https://img.shields.io/github/release-date/apinf/platform.svg)
![](https://img.shields.io/github/commits-since/apinf/platform/latest.svg)

| :octocat: [Git Repository](https://github.com/apinf/platform) | :whale: [Docker Hub](https://hub.docker.com/u/apinf/platform) |   :books: [Documentation](https://github.com/apinf/platform/blob/develop/README.md)| :page_facing_up: [Site](https://apinf.io/)  | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/data-publication/apinf) |
|---|---|---|---|---|

### What is APInf?

The APInf API Management Framework is a Smart City orchestrator to be used
together with other FIWARE enablers. APInf integrates with FIWARE core
technologies, such as
[Identity Management](https://fiware-idm.readthedocs.io/en/latest/),
[NGSI v2](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
and [Business API Ecosystem](https://business-api-ecosystem.rtfd.io/) along with
[API Umbrella](https://apiumbrella.io/) to offer a comprehensive toolset to let
various API Owners to run business with their APIs. Public market place is one
of the essential GUI tools to help API Owners to reach their customer with the
showcase.

The APInf API Management Framework is a highly extendable and can bring huge
benefits to managed APIs - such as NGSI based interfaces like FIWARE Context
Broker instances. This extends opportunities to setup a complete IoT cloud for
Smart Cities using FIWARE technologies alone. Both right-time data and
historical data will be available for software developers to build Smart
Applications.

### Why use APInf?

The APInf API Management Framework is a central part of the FIWARE platform
combining with other Generic Enablers in an offering a dashboard for all
application developers. The business tools of the framework help API Owners to
run their API business. This helps cities to distribute digital technology in
small pieces in order to let local small software companies to attend in
building the services to their home city. The support is close and this approach
creates jobs for local people, which in turn generate move tax money for the
city to develop better digital services to the citizens.

The **APInf** project is part of [FIWARE](https://fiware.org/) and will be rated
as part of the next release.
