# Catalogue<img src="https://fiware.github.io//catalogue/img/fiware-black.png" width="145" align="left">

![FIWARE Catalogue](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/cross-chapter.svg)
[![License AGPL](https://img.shields.io/github/license/fiware/catalogue.svg)](https://opensource.org/licenses/AGPL-3.0)

This is an umbrella repository which briefly introduces each of the components (also referred as Generic Enablers) which
are part of [FIWARE](https://www.fiware.org/developers/) and allow users and developers to easily navigate to the
relevant source code repositories, documentation and Docker images.

More information about what FIWARE is and how to use it can be found within the **FIWARE Tour Guide**, the **FIWARE
Academy** and the **Step-by-Step Tutorials**. Generic questions about FIWARE can be asked on **Ask.FIWARE** and
developer-based questions can be submitted on **Stack Overflow** using the FIWARE tag.

| <img src="https://fiware.github.io/catalogue/img/fiware-emoji.png" height="20px" width="20px"/><br/> [developer.&ZeroWidthSpace;fiware.org](https://www.fiware.org/developers/) | :books: <br/> [Tour Guide](https://fiwaretourguide.rtfd.io) | :mortar_board: <br/> [Academy](https://fiware-academy.readthedocs.io) | :capital_abcd: <br/> [Tutorials](https://fiware-tutorials.rtfd.io) | :question: <br/> [Ask.&ZeroWidthSpace;FIWARE](https://ask.fiware.org/questions/) | [![Support badge](https://img.shields.io/badge/tag-fiware-orange.svg?logo=stackoverflow)](https://stackoverflow.com/questions/tagged/fiware) |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------ | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |


## Contents

<details>
<summary><strong>Details</strong></summary>

-   [Background](#background)
-   [Installation](#installation)
-   [Generic Enablers](#generic-enablers)
    -   [Core Context Management](#core-context-management)
    -   [Interface with IoT, Robots and Third-Party Systems](#interface-with-iot-robots-and-third-party-systems)
    -   [Context Processing, Analysis and Visualization](#context-processing-analysis-and-visualization)
    -   [Context Data/API Management, Publication and Monetization](#context-dataapi-management-publication-and-monetization)
    -   [Deployment Tools](#deployment-tools)
-   [Data Spaces](#data-spaces)
-   [Management of FIWARE Releases](#management-of-fiware-releases)
-   [Testing](#testing)
-   [Contributing](#willing-to-contribute-your-technology-to-fiware)
-   [License](#license)

</details>

## Background

[FIWARE](https://www.fiware.org) brings a curated framework of open source software platform components which can be
assembled together and with other third-party components to build platforms that support the development of Smart
Solutions faster, easier and cheaper. The main and only mandatory component of any _“Powered by FIWARE”_ platform or
solution is a FIWARE Context Broker Generic Enabler, supplying a cornerstone function required in any smart solution:
the need to manage context information, enabling to perform updates and bring access to context.

FIWARE NGSI is the API exported by a FIWARE Context Broker, used for the integration of platform components within a
_"Powered by FIWARE"_ platform and by applications to update or consume context information. FIWARE NGSI API
specifications have evolved over time, initially matching
[NGSI-v2 specifications](http://fiware.github.io/specifications/ngsiv2/stable/), now aligning with the
[ETSI NGSI-LD standard](https://www.etsi.org/committee/cim). The FIWARE Community plays an active role in the evolution
of ETSI NGSI-LD specifications which were based on NGSI-v2 and commits to deliver compatible open source implementations
of the specs.

![](https://fiware.github.io/catalogue/img/catalogue.png)

Building around the FIWARE Context Broker, a rich suite of complementary open-source FIWARE Generic Enablers are
available, dealing with the following:

-   **[Core Context Management](./core/README.md)** manipulates and stores context data so it can be used for further
    processesing
-   **Interfacing with the [Internet of Things](./iot-agents) (IoT), [Robots](./robotics) and
    [third-party systems](./third-party)**, for capturing updates on context information and translating required
    actuations.
-   **[Processing, analysis and visualization](./processing)** of context information, implementing the expected smart
    behaviour of applications and/or assisting end users in making smart decisions.
-   **[Context Data/API management](./security), [publication and monetization](./data-publication)**, bringing support
    to usage control and the opportunity to publish and monetize part of managed context data.
-   **[Deployment Tools](#deployment-tools)** such as Docker images and Helm-chart recipes are available for each
    Generic Enabler

FIWARE is not about take it all or nothing. You are not forced to use these complementary FIWARE Generic Enablers but
are free to use other third platform components as well to design the hybrid platform of your choice. As long as it uses
the FIWARE Context Broker technology to manage context information, your platform can be labeled as _“Powered by
FIWARE”_ and solutions build on top as well. Listings of many FIWARE Ready devices and commercial _“Powered by FIWARE”_
solutions can be found on the [FIWARE Marketplace](http://marketplace.fiware.org/).

To be adopted as a Generic Enabler within FIWARE, each open source component must fulfil a number of **contribution
requirements**. The technical direction of FIWARE is governed by the **FIWARE Technical Steering Committee (TSC)**.
Developers can also subscribe to the **FIWARE TSC mailing list**, join the FIWARE TSC regular confcalls as observer and
follow the progress of the discussions through the **FIWARE TSC meeting minutes**.

| :clipboard: <br> [Contribution Requirements](https://github.com/FIWARE/contribution-requirements) | :family: <br> [Technical Steering Committee](https://www.fiware.org/foundation/technical-steering-committee/) | :mega: <br> [Mailing list](https://lists.fiware.org/listinfo/fiware-technical-committee) | :open_file_folder: <br> [Meeting minutes](https://docs.google.com/spreadsheets/d/11zZAv7l3FCr0a0I_UoC39S6dwdjC2x7ydmPeH61-X74/edit?usp=sharing) |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |


## Installation

To obtain the latest codebase of all FIWARE Generic Enablers:

```console
git clone https://github.com/FIWARE/catalogue.git
cd catalogue/
git submodule update --init --recursive
git submodule update --recursive --remote
```

## Generic Enablers

The following sections describe the current list of Generic Enablers of the FIWARE platform structured into five
architectural chapters.

### Core Context Management

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./core/README.md)

#### Core Context Broker components

A Context Broker component is the core and mandatory component of any _“Powered by FIWARE”_ platform or solution. It
enables to manage context information in a highly decentralized and large-scale manner.

-   The [Orion Context Broker](https://github.com/telefonicaid/fiware-orion/) Generic Enabler currently provides the
    FIWARE NGSI v2 API which is a simple yet powerful Restful API enabling to perform updates, queries or subscribe to
    changes on context information.

The following Context Broker implementations, supporting the ETSI NGSI-LD API specifications are under incubation:

-   The [Orion-LD Context Broker](https://github.com/FIWARE/context.Orion-LD) Generic Enabler is a NGSI-LD Broker, which
    supports the NGSI-LD and the NGSI-v2 APIs. The current release is nearly feature complete, and plan is to merge
    it with the main branch of Orion.
-   The [Scorpio Broker](https://github.com/ScorpioBroker/ScorpioBroker) Generic Enabler is an alternative NGSI-LD
    Broker which can also be used in federated environments
-   The [Stellio Context Broker](https://github.com/stellio-hub/stellio-context-broker) Generic Enabler is another
    alternative NGSI-LD Broker

#### Core Data Connectors

Accompanying a Context Broker component as part of Core Context Management, a number of Data Connectors are available:

-   The [STH Comet](https://github.com/telefonicaid/fiware-sth-comet/) Generic Enabler brings the means for storing a
    short-term history of context data (typically months) on MongoDB
-   The [Cygnus](https://github.com/telefonicaid/fiware-cygnus) Generic Enabler is enables a means of managing the
    history of context which is created as a stream of data and can be injected into multiple data sinks, including many
    popular databases such as PostgreSQL, MySQL, MongoDB or AWS DynamoDB or as Big Data platforms such as Hadoop, Storm
    or Spark. The component is based on Apache Flume
-   The [Draco](https://github.com/ging/fiware-draco) Generic Enabler is an alternative data persistence mechanism for
    managing the history of context. It is based on Apache NiFi and is a dataflow system based on the concepts of
    flow-based programming. It supports powerful and scalable directed graphs of data routing, transformation, and
    system mediation logic and also offers an intuitive graphical interface
-   The [Cosmos](https://github.com/ging/fiware-cosmos) Generic Enabler enables simpler Big Data analysis over context
    integrated with popular Big Data platforms (Spark and Flink).
-   The [QuantumLeap](https://github.com/smartsdk/ngsi-timeseries-api/) Generic Enabler supports the storage of context
    data into a time series database (CrateDB and Timescale)

The following is a list of Generic Enablers under incubation within the area of Core Data Connectors systems:

-   The [Canis Major](https://github.com/fiware/CanisMajor) Generic Enabler is a blockchain adaptor that supports
    various DLTs, the adaptor aims to submit the data to DLT using FIWARE Technologies
-   The [NGSI.js](https://github.com/ficodes/ngsijs) library provides a series of JavaScript functions allowing
    developers to connect and push context data to any NGSI compliant context broker

Further information can be found on dedicated pages linked to [Core Context Management](./core/README.md)

### Interface with IoT, Robots and Third-Party Systems

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./iot-agents/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./robotics/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/third-party.svg)](./third-party/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/media-streams.svg)](./iot-agents/README.md)

A number of Generic Enablers are available making it easier to interface with the Internet of Things (IoT), Robots and
Third-party systems for the purpose of gathering valuable context information or trigger actuations in response to
context updates:

-   The **IDAS** Generic Enabler offers you a wide range of IoT Agents making it easier to interface with devices using
    the most widely used IoT protocols (LWM2M over CoaP, JSON or UltraLight over HTTP/MQTT, OPC-UA, Sigfox or LoRaWAN)

    -   [IoT Agent for JSON](https://github.com/telefonicaid/iotagent-json) - a bridge between HTTP/MQTT messaging (with
        a JSON payload) and NGSI
    -   [IoT Agent for LWM2M](https://github.com/telefonicaid/lightweightm2m-iotagent) - a bridge between the
        [Lightweight M2M](https://www.omaspecworks.org/what-is-oma-specworks/iot/lightweight-m2m-lwm2m/) protocol and
        NGSI
    -   [IoT Agent for Ultralight](https://github.com/telefonicaid/iotagent-ul) - a bridge between HTTP/MQTT messaging
        (with an UltraLight2.0 payload) and NGSI
    -   [IoT Agent for LoRaWAN](https://github.com/Atos-Research-and-Innovation/IoTagent-LoRaWAN) - a bridge between the
        [LoRaWAN](https://www.thethingsnetwork.org/docs/lorawan/) protocol and NGSI
    -   [IoT Agent for OPC-UA](https://github.com/Engineering-Research-and-Development/iotagent-opcua) - a bridge
        between the [OPC Unified Architecture](http://www.opcua.us/) protocol and NGSI
    -   [IoT Agent for Sigfox](https://github.com/telefonicaid/sigfox-iotagent) - a bridge between the
        [Sigfox](https://www.sigfox.com/en) protocol and NGSI
    -   [IoT Agent for ISOXML](https://github.com/FIWARE/iotagent-isoxml) - a bridge between the ISOXML/ADAPT protocol
        for agricultural machinery and NGSI
    -   [IoT Agent library](https://github.com/telefonicaid/iotagent-node-lib/) - library for developing your own IoT
        Agent.

-   The [Kurento](https://github.com/kurento/) Generic Enabler enables real-time processing of media streams supporting
    the transformation of video cameras into sensors as well as the incorporation of advanced application functions
    (integrated audiovisual communications, augmented reality, flexible media playing and recording, etc)

The following is a list of Generic Enablers under incubation within the area of IoT, Robotics and third-party systems:

-   The [OpenVidu](https://github.com/OpenVidu/openvidu/) Generic Enabler is an abstraction layer for Kurento, making
    media processing easier to program.
-   The [OpenMTC](https://github.com/OpenMTC/OpenMTC) Incubated Generic Enabler brings an open source implementation of
    the [OneM2M](http://www.onem2m.org/) standard. A northbound interface with the Orion Context Broker is implemented
    as part of the product.
-   The [Fast DDS](https://github.com/eProsima/Fast-RTPS) Incubated Generic Enabler has been adopted as default
    middleware in [ROS2](https://index.ros.org/doc/ros2/), the widely known Robot Operating System, therefore it helps
    to interface with ROS2-based robotics systems.
-   The [Micro XRCE-DDS](https://github.com/eProsima/Micro-XRCE-DDS) Incubated Generic Enabler is a lite version of the
    [DDS](https://www.omg.org/spec/DDS) middleware, adapted to run in extremely constrained resource devices (e.g.
    micro-controllers).
-   The [FIROS](https://github.com/iml130/firos) Incubated Generic Enabler works as a translator between the robotics
    domain and the cloud, transforming [ROS](https://www.ros.org/) messages into NGSI v2 and vice versa.
-   The [Domibus](https://ec.europa.eu/cefdigital/code/projects/EDELIVERY/repos/domibus) Incubated Generic Enabler helps
    users to exchange electronic data and documents with one another in a reliable and trusted way.
-   The [Oliot](https://github.com/yalewkidane/FIWARE_EPCIS_Mediation_Gateway) Incubated Generic Enabler is a mediation
    gateway which translates information from NGSI based platforms to [EPCIS based](https://www.gs1.org/epcis/epcis/1-1)
    IoT platforms.

Further information can be found on dedicated pages linked to [IoT Agents](./iot-agents/README.md) and
[Robotics](./robotics/README.md) and [Third-Party Systems](./third-party/README.md)

### Context Processing, Analysis and Visualization

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/processing.svg)](./processing/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/visualization.svg)](./processing/README.md)

A number of Generic Enablers are available making it easier to process, analyze or visualize context information for the
purpose of implementing the “smart behaviour” expected in any application:

-   The [Wirecloud](https://github.com/Wirecloud/) Generic Enabler brings a powerful web mashup platform making it
    easier to develop operational dashboards which are highly customizable by end users.
-   The [FogFlow](https://github.com/smartfog/fogflow) Generic Enabler is a distributed execution framework to support
    dynamic processing flows over cloud and edges.

The following is a list of Generic Enablers under incubation within the chapter:

-   The [Perseo](https://github.com/telefonicaid/perseo-core/) Generic Enabler introduces Complex Event Processing (CEP)
    defined using a rules-based system, enabling you to fire events which send HTTP requests, emails, tweets, SMS
    messages etc.

Further information can be found on dedicated pages linked to
[Context Processing, Analysis and Visualization](./processing/README.md)

### Context Data/API Management, Publication and Monetization

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/api-management.svg)](./data-publication/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/data-publication.svg)](./data-publication/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/data-monetization.svg)](./data-publication/README.md)
[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./security/README.md)

You can implement secured access to components in the architecture of any “Powered by FIWARE” solution using Generic
Enablers of the security chapter:

-   The [Keyrock Identity Management](https://github.com/ging/fiware-idm) Generic Enabler brings support to secure and
    private OAuth2-based authentication of users and devices, user profile management, privacy-preserving disposition of
    personal data, Single Sign-On (SSO) and Identity Federation across multiple administration domains.
-   The [Wilma PEP Proxy](https://github.com/ging/fiware-pep-proxy) Generic Enabler brings support of proxy functions
    within OAuth2-based authentication schemas. It also implements PEP functions within an XACML-based access control
    schema.
-   The [AuthZForce PDP/PAP](https://github.com/authzforce/server) Generic Enabler brings support to PDP/PAP functions
    within an access control schema based on the XACML standard.

The incorporation of components and features to support **Advanced Data Usage Control** have been introduced as part of
FIWARE Release 7.7. For a summary of vision and current status of work in this area, please visit the usage control
pages found at: [https://github.com/ging/fiware-usage-control](https://github.com/ging/fiware-usage-control)

This area also contains a chapter for the publication and monetization of context data resources, available through the
core Orion Context Broker component of your platform:

-   The [CKAN extensions](https://github.com/conwetlab/FIWARE-CKAN-Extensions) Generic Enabler brings a number of
    add-ons enabling to extend current capabilities of the world-leading CKAN Open Data publication platform to allow
    publication of datasets matching right-time context data, the assignment of access terms and policies to those
    datasets and the assignment of pricing and pay-per-use schemas to datasets.
-   The [Biz Framework](https://github.com/FIWARE-TMForum/Business-API-Ecosystem) Generic Enabler brings backend support
    to Context API/Data monetization based on open TM Forum Business APIs.
-   [Idra](https://github.com/OPSILab/Idra) is able to federate existing Open Data Management Systems based on
    heterogeneous technologies (e.g. CKAN, SOCRATA, DKAN etc.) providing a single API and a standard metadata format
    (DCAT-AP) to discover open datasets.

The following is a list of Generic Enablers under incubation within the area of API management, publication and
monetization:

-   [APInf](https://github.com/apinf/platform) API Management Framework is a tool for API owners to manage their APIs.
    It provides all the necessary features to run business with APIs and makes it easy for API consumers to find and
    start using the standard APIs.
-   [CoatRack](https://github.com/coatrack/coatrack/) is a third-party backend-to-backend communications framework
    facilitating API access, monitoring and monetization.
-   [FIWARE TRUE Connector](https://github.com/Engineering-Research-and-Development/fiware-true-connector) enables
    trusted data exchange in order for context brokers to be able to become an active part of an
    [International Data Spaces](https://internationaldataspaces.org/) (IDS) Ecosystem
-   [Steelskin PEP](https://github.com/telefonicaid/fiware-pep-steelskin) is a PEP proxy meant to secure independent
    FIWARE components, by intercepting every request sent to the component, validating it against an Access Control
    component such as Keypass
-   [Keypass](https://github.com/telefonicaid/fiware-keypass) is multi-tenant XACML server with PAP and PDP
    capabilities.
-   [Keystone SCIM](https://github.com/telefonicaid/fiware-keystone-scim) is an OpenStack Keystone extension that
    enables the management of User, Groups and Roles using the
    [SCIM v1.1](https://developer.okta.com/docs/reference/scim/scim-11/) standard
-   [Keystone SPASSWORD](https://github.com/telefonicaid/fiware-keystone-spassword) is an OpenStack Keystone extension
    that enables extra security checks over user passwords

Further information can be found on dedicated pages linked to
[Context Data/API Management, Publication and Monetization](./data-publication/README.md) and
[Security](./security/README.md)

### Deployment Tools

![FIWARE Catalogue](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/deployment-tools.svg)

Most FIWARE components are available as [Docker Images](https://hub.docker.com/u/fiware), direct links can be found
within the descriptions of each generic enabler. A `docker-compose.yml` may also be available within the GitHub
repository, but these should only be used in development environments. For fully scalable production-ready instances of
FIWARE Generic Enablers please refer to the repository holding the FIWARE
[Helm Chart recipes](https://github.com/FIWARE/helm-charts/) or find FIWARE Helm Chart receipes directly on
[ArtifactoryHub](https://artifacthub.io/packages/search?page=1&ts_query_web=fiware)

## Data Spaces

FIWARE brings the essential building blocks helping to create Data Spaces enabling access and share of data in an
effective and trustworthy manner. The open source nature of FIWARE technologies foster creation of these data spaces as
federated infrastructures where multiple providers can be involved and not just a few players. FIWARE is bringing today
mature technologies, compatible with IDS and CEF Building Blocks, that may accelerate the delivery of data spaces to the
market and the materialization of initiatives like GAIA-X in Europe.

The concrete selection of FIWARE components proposed as building blocks for the creation of Data Spaces can be found on
dedicated pages linked to [FIWARE for Data Spaces](./data-spaces).

## Management of FIWARE Releases

The individual components within the FIWARE catalogue are free to make
[semantic versioned](https://semver.org/spec/v2.0.0.html) releases at any time. Additionally, a labelling of the whole
FIWARE catalogue takes place at regular intervals where all components are collected together and a FIWARE label added
according to a set of
[well-defined rules](https://fiware-requirements.readthedocs.io/en/latest/GE_Requirements/#software-releases). The
FIWARE catalogue release schedule follows a strict
[timetable](https://fiware-requirements.readthedocs.io/en/latest/release/index.html). Versions of components with the
same FIWARE release label should be completely interoperable and work nicely with each other.

| :dart: &nbsp; [Roadmap](./roadmap.md) | :rocket: &nbsp; [Release Notes](https://github.com/FIWARE/catalogue/releases) |
| ------------------------------------- | ----------------------------------------------------------------------------- |


As well as source-code repositories and binaries, relevant components are available as Docker images and Helm-chart
recipes for Kubernetes. Smart Data Models for NGSI-v2 and NGSI-LD help to define harmonised representation formats and
semantics that will be used by applications both to consume and to publish data.

| [![Docker Hub](https://nexus.lab.fiware.org/repository/raw/public/badges/docker/fiware.svg)](https://hub.docker.com/u/fiware)<br>[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/fiware)](https://artifacthub.io/packages/search?repo=fiware) | :globe_with_meridians: &nbsp; [Helm Charts](https://github.com/FIWARE/helm-charts/) | <img src="https://json-ld.org/favicon.ico" align="center" height="25"> [Smart Data Models](https://smartdatamodels.org) |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |


## Testing

FIWARE is ready to work in industrial environments. A continuous quality assurance process is running to warranty the
level of reliability in FIWARE Generic Enablers. Following the energy labelling system applied by European Union for
devices, each Generic Enabler is assigned with an overall label in the Catalogue (A+++, A++, A+, A, B, C) according to
the obtained results in testing different aspects.

A testing method has been defined to conduct documentation verification, functional tests (verification of Generic
Enablers specifications and APIs testing) and non-functional tests such as performance, stability and scalability. The
tests are executed for every new version of the Generic Enablers, providing valuable insights to the Generic Enabler
owners for improving the next Generic Enabler release.

All the tests can be conducted by anyone since the files for defining and running the tests have been published in an
open source repository.

Full details of the test results can be found on the
[FIWARE site](https://www.fiware.org/developers/qa-labeling-of-fiware-components/) - a summary of the test results is
presented for each enabler within the submodules below.

Mature Generic Enablers have been thoroughly tested and have already demonstrated useful role accepted within the FIWARE
framework. Incubated Generic enablers (annotated with :seedling:) have also been tested, but are still in the process of
maturing to full acceptance with the FIWARE system. Recent applicants to FIWARE (annotated with :new:) are new to FIWARE
and will undergo testing in the forthcoming release.

## Willing to contribute your technology to FIWARE?

The application process for joining the FIWARE Initiative is described in the links below. To be adopted as a Generic
Enabler within FIWARE, each open source component must fulfill a number of
[contribution requirements](https://fiware-requirements.readthedocs.io), follow common
[Open Source Best Practice](https://bestpractices.coreinfrastructure.org/en/signup) and sign-up to the harmonized FIWARE
[Entity Contributor License Agreement](https://fiware.github.io/contribution-requirements/entity-cla.pdf). The technical
direction of FIWARE is governed by the FIWARE Technical Steering Committee (TSC).

You can contribute to FIWARE technically by different means: contributing code for a given FIWARE component, helping to
develop tutorials/training material which are made freely available to developers, supporting QA activities or
supporting the operations of the FIWARE Lab.

| :inbox_tray: <br> [**Application Form**](https://docs.google.com/forms/d/e/1FAIpQLSdp_QkAG8p5XJK-WDB1xPNY9e4VCvNEJyxwugBvMI6uSPe3fA/viewform?c=0&w=1) | :clipboard: <br> [Contribution Requirements](https://fiware-requirements.readthedocs.io) | <img src="https://fiware.github.io/catalogue/img/fiware-emoji.png" height="20px" width="20px"/> :heavy_plus_sign: :computer:<br> [Entity CLA](https://fiware.github.io/contribution-requirements/entity-cla.pdf) | :wrench: <br> [Active Contributors](https://docs.google.com/forms/d/e/1FAIpQLSfYfHWqE54jmeUR_xLMyRdQ-QxyZ92CNskUiRT5MQsiRp95XA/viewform?c=0&w=1) | <img src="https://fiware.github.io/catalogue/img/fiware-emoji.png" height="20px" width="20px"/> :heavy_plus_sign: :bust_in_silhouette:<br> [Individual CLA](https://fiware.github.io/contribution-requirements/individual-cla.pdf) |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |


## License

[License: AGPL-3.0](LICENSE) © 2018-2021 FIWARE Foundation e.V.

The FIWARE Catalogue includes additional submodules which have been obtained under license - check the `README` of each
submodule for more details. Some of these elements are available under a more permissive license than Affero General
Public License.

Additional permission is given to reproduce the texts found within the root project under the Creative Commons
[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) License.

### Some FIWARE Components are distributed under GPL or AGPL open source licenses … Is it safe for me to use?

Absolutely. Issues with GPL (or AGPL) licenses are mostly related with the fact that different people assign different
interpretations on the meaning of the term “derivate work” used in these licenses. Due to this, some people understand
that there is a risk in just using software under GPL or AGPL licenses (even without modifying it).

In order to avoid any issue, FIWARE Generic Enabler owners who have decided to release their software using a GPL or
AGPL license are required to make a public statement that states:

> Please note that software derived as a result of modifying the source code of this software in order to fix a bug or
> incorporate enhancements is considered a derivative work of the product. Software that merely uses or aggregates (i.e.
> links to) an otherwise unmodified version of existing software is not considered a derivative work.

The public statement above is aimed at giving users confidence they can use FIWARE components even if they have been
licensed under a copyleft license without this requiring that their applications have to be released as open source. The
FIWARE Foundation has sought legal advice regarding this statement and has been told that incorporation of this
paragraph is valid for this purpose as per the report produced by Across Legal/ID law partners (see
[summary report](https://fiware.github.io/contribution-requirements/opinion-summary.pdf)).

This means that there is absolute no risk that you are forced to release the software that you may have developed using
FIWARE Generic Enablers under a GPL, AGPL or any other open source license.
