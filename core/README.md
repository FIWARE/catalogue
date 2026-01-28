# Core Context Management

If you want your application to be “smart”, you have to first make it “aware”. FIWARE provides you with means to
produce, gather, publish and consume context information at large scale and exploit it to transform your application
into a truly smart application.

Context information is represented through values assigned to attributes that characterize those entities relevant to
your application.

To learn more about Core Context Management Enablers, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/core/introduction/)

## NGSI-v2 Context Broker Implementations

### Orion

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-orion.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-orion.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-orion/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-orion/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/orion) | :books: [Documentation](https://fiware-orion.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/orion) | :dart: [Roadmap](https://github.com/telefonicaid/fiware-orion/blob/master/doc/roadmap.md) |
| ------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------------------------------------------------- | ------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------- |


#### What is Orion?

The Orion Context Broker is an implementation of the Publish/Subscribe Context Broker GE, providing the NGSI interfaces.
Using these interfaces, clients can do several operations:

-   Register context producer applications, e.g. a temperature sensor within a room
-   Update context information, e.g. send updates of temperature
-   Being notified when changes on context information take place (e.g. the temperature has changed) or with a given
    frequency (e.g. get the temperature each minute)
-   Query context information. The Orion Context Broker stores context information updated from applications, so queries
    are resolved based on that information.

#### Why Use Orion?

If you are developing a Data/Context scenario, a broker like the Orion Context Broker is a must. You would need a
component in the architecture able to mediate between consumer producers (e.g. sensors) and the context consumer
applications (e.g. an mobile phone applications taking advantage of the context information provided by the sensors).
The Orion Context Broker fulfils this functionality in your architecture.

Orion is an implementation of the FIWARE Publish/Subscribe Context Broker Generic Enabler. More specifically, Orion
implements the following API and Open Specification:

-   [NGSI-v2](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)

For context data management, NGSI and the Orion context broker have been accepted as standards or recommendations by a
variety of independent standards bodies, for example, GSMA recommends NSGI as a standard for relevant parts of their
[IoT Big Data architecture](https://www.gsma.com/iot/wp-content/uploads/2016/11/CLP.25-v1.0.pdf) and promotes the Orion
Context Broker as the primary example of the standard and NGSI specification has been selected by the European
Commission as a [CEF Building Block](https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/Context+Broker) for the
implementation of new smart applications and Public Administration.

The use of the Orion context broker is mandatory for any [platform](https://marketplace.fiware.org/pages/platforms) or
[solution](https://marketplace.fiware.org/pages/solutions) to be labelled as “Powered by FIWARE” within the
[FIWARE marketplace](https://marketplace.fiware.org/)

---

## NGSI-LD Context Broker Implementations

### Scorpio

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/badge/license-BSD--4--clause-green)
![](https://img.shields.io/github/release-date/ScorpioBroker/ScorpioBroker.svg)
![](https://img.shields.io/github/commits-since/ScorpioBroker/ScorpioBroker/latest.svg)

| :octocat: [Git Repository](https://github.com/ScorpioBroker/ScorpioBroker) | :whale: [Docker Hub](https://cloud.docker.com/u/scorpiobroker/) | :books: [Documentation](https://scorpio.rtfd.io/) |
| -------------------------------------------------------------------------- | --------------------------------------------------------------- | ------------------------------------------------- |


#### What is Scorpio?

Scorpio is an NGSI-LD Broker that allows managing and requesting context information. Context Producers can manage their
context – creating, updating, appending and deleting context information. Context Consumers can request the context
information they require, either identifying the entity or discover relevant entities by providing the entity type,
possibly filtering according to property value, existing relationship and/or geographic scope provided as a GeoJSON
feature.

Two interaction styles are supported, a synchronous query-response, and an asynchronous subscribe / notify, where
notifications can be based on a change in property or relationship, or on a fixed time interval. In addition to the
regular context interface that provides the most current properties and relationships for each entity, Scorpio
implements NGSI-LD’s optional temporal interface for requesting historic information, e.g. the property values measured
within a specified time interval.

Scorpio supports multiple deployment configurations including centralized, distributed and federated ones. In addition
to the Context Producers mentioned above, there can be Context Sources that themselves implement the NGSI-LD interface.
These Context Sources can register themselves with the information they can provide on request (not the information
(values) itself).

A Scorpio Broker in a distributed setting can then discover the Context Sources that may have information for answering
a request based on their registrations, request and aggregate the information from different Context Sources and provide
it to the requesting Context Consumer. In a federated setting the Context Source can itself be an NGSI-LD Broker.
Federations can be used to combine information from multiple providers that want to (partially) share information. An
important difference is then typically in the granularity of the registration, e.g. “I have information about entities
of entity type building within a geographic area”, instead of “I have information about Building X”

#### Why Use Scorpio?

Scorpio implements NGSI-LD, which is the evolution of NGSI-v2 and previous versions going back to the OMA NGSI context
interfaces. This standardized version is based on the NGSI-LD specification published by the ETSI Industry Specification
Group on Context Information Management.

NGSI-LD has a number of new features compared to NGSI-v2. NGSI-LD distinguishes properties and relationships instead of
only having attributes. While properties have values, relationships explicitly refer to other entities. The result is an
explicit entity graph, as specialized knowledge graph. Relationships can be followed to find relevant related entities.
NGSI-LD is based on JSON-LD, where LD stands for linked data. As required in JSON-LD, NGSI-LD uses entity types,
relationships and properties defined as unique URIs. The representation of the data is still concise as shortname
strings can be used, the mapping to URIs is done in an `@context` element that can be part of the JSON or be referenced
as a header. As JSON-LD is a serialization of RDF, NGSI-LD provides a semantic grounding and can be used with semantic
tools and combined with other information.

Scorpio supports different deployment configurations, which support scalability and extension of scenarios in an
evolutionary way. For example two separate deployments can be combined or for scalability reasons different brokers can
be used – completely transparent to Context Consumers that can still use a single point of access. Scorpio also
implements the optional temporal NGSI-LD interface, so any updated context information can automatically be made
available as history information through the temporal interface.

---

### Orion-LD

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/context.Orion-LD.svg)
![](https://img.shields.io/github/release-date/FIWARE/context.Orion-LD.svg)
![](https://img.shields.io/github/commits-since/FIWARE/context.Orion-LD/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/context.Orion-LD/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/orion-ld) | :books: [Documentation](https://github.com/FIWARE/context.Orion-LD/tree/develop/doc/manuals-ld) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/orion-ld) | :dart: [Roadmap](https://github.com/FIWARE/context.Orion-LD/blob/develop/doc/roadmap.md) |
| ----------------------------------------------------------------------- | --------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |

#### What is Orion-LD?

Orion-LD is an alternative NGSI-LD Context Broker written in C/C++. It is a standalone executable and therefore small,
fast, lightweight and easy to handle. Context brokers allow for the management and requesting context of information in
a structured manner based on linked data standards following the NGSI-LD specification. Orion-LD is more suitable for
smaller installations or possibly in embedded environments - it currently supports only a subset of the standard NGSI-LD
endpoints.

#### Why Use Orion-LD?

Orion-LD implements the NGSI-LD linked data interface, which is the evolution of NGSI-v2 and previous versions going
back to the OMA NGSI context interfaces. This standardized version is based on the NGSI-LD specification published by
the ETSI Industry Specification Group on Context Information Management.

NGSI-LD has a number of new features compared to NGSI-v2. NGSI-LD distinguishes properties and relationships instead of
only having attributes. While properties have values, relationships explicitly refer to other entities. The result is an
explicit entity graph, as specialized knowledge graph. Relationships can be followed to find relevant related entities.
NGSI-LD is based on JSON-LD, where LD stands for linked data. As required in JSON-LD, NGSI-LD uses entity types,
relationships and properties defined as unique URIs. The representation of the data is still concise as shortname
strings can be used, the mapping to URIs is done in an `@context` element that can be part of the JSON or be referenced
as a header. As JSON-LD is a serialization of RDF, NGSI-LD provides a semantic grounding and can be used with semantic
tools and combined with other information.

---

### Stellio

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/stellio-hub/stellio-context-broker.svg)
![](https://img.shields.io/github/last-commit/stellio-hub/stellio-context-broker.svg)
![](https://img.shields.io/github/tag/stellio-hub/stellio-context-broker.svg)

| :octocat: [Git Repository](https://github.com/stellio-hub/stellio-context-broker/) | :whale: [Docker Hub](https://hub.docker.com/orgs/stellio/repositories/) | :books: [Documentation](https://stellio.rtfd.io/) |
| ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------- |

#### What is Stellio?

Stellio is a NGSI-LD context broker implementing the API specification published by the ETSI Industry Specification 
Group for Context Information Management (ISG CIM). Context information means any piece of data which is contextualized
in time, space and in relation to other data through linked data principles.  

Stellio is built around a Kafka message broker for improved extensibility, scalability and decoupling of services. These
services embed a PostgreSQL database for context management, enhanced with timeseries (Timescale) and geospatial (PostGIS)
extensions to efficiently manage temporal and geospatial properties. 

Stellio, developed in Kotlin, is also built upon the Spring Boot and Spring Cloud frameworks. It is based on a modular 
architecture and follows the reactive and functional paradigms. 

Stellio acts as a central broker and is currently adding support for distributed operations. It supports major 
operations on context information, subscriptions and temporal queries. It does not aim to support NGSIv1 and NGSIv2 specifications. 

#### Why use Stellio?

Stellio is a mature and robust context broker deployed in many production environments. It is thoroughly tested 
and has a clean code base backed by strong quality and security checks. 

In addition, Stellio includes the support of the NGSI-LD API for querying the temporal evolution of entities, as long 
as the interface for performing geospatial queries. The included Timescale and PostGIS extensions of the well-known 
PostgreSQL database allow efficient queries while allowing off-the-shelves storing of large volumes of historical data.  

By leveraging the Spring Cloud features, it can easily be deployed in cloud native environments. 

Finally, Stellio has native but optional support for authentication (based on the OpenID Connect and OAuth2 protocols) 
and authorization. It is currently validated with the use of Keycloak as the complementary identity and access management
solution. 

---

## Context-Data Awareness

### Draco

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-draco.svg)
![](https://img.shields.io/github/release-date/ging/fiware-draco.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-draco/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-draco) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/draco) | :books: [Documentation](https://fiware-draco.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/draco) | :dart: [Roadmap](https://github.com/ging/fiware-draco/blob/master/docs/roadmap.md) |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------- |


#### What is Draco?

Draco is a connector in charge of persisting context data sources into other third-party databases and storage systems,
creating a historical view of the context. Internally, Draco is based on Apache NiFi. [NiFi](https://nifi.apache.org) is
a popular framework for data management and processing from multiple sources.

Draco plays the role of a connector between the Orion Context Broker (which is an
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
source of data) source of data) and a wide range of external systems such as MySQL, MongoDB etc. You can use Draco if
you need to process and persist context data so that you can keep a historical record. Draco can also be used to filter
and repost context data back into Orion.

#### Why Use Draco?

Persisting historical context data is useful for big data analysis - it can be used to discover trends, or data can be
sampled and aggregated to remove the influence of outlying data measurements. However within each Smart Solution, the
significance of each entity type will differ and entities and attributes may need to be sampled at different rates.

Since the business requirements for using context data differ from application to application, no single standard use
case for historical data persistence exists. Therefore rather than overloading the context broker with the job of
historical context data persistence, this role has been separated out into another enabler. Amongst the advantages of
the component, Draco offers a flexible graphical interface so it is possible to amend your data flows according to your
current business needs.

---

### Cosmos

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-cosmos-orion-flink-connector.svg)
![](https://img.shields.io/github/release-date/ging/fiware-cosmos-orion-flink-connector.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-cosmos-orion-flink-connector/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-cosmos) | :whale: Docker Hub : **none** | :books: [Flink](https://fiware-cosmos-flink.readthedocs.io) | :books: [Spark](https://fiware-cosmos-spark.readthedocs.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/cosmos) | :dart: [Roadmap](https://github.com/ging/fiware-cosmos/blob/master/ROADMAP.md) |
| ----------------------------------------------------------------- | ----------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |


#### What is Cosmos?

The Cosmos Big Data Analysis GE is a set of tools that help achieving the tasks of Streaming and Batch processing over
context data. These tools are:

##### Flink

-   [Orion-Flink Connector](https://github.com/ging/fiware-cosmos-orion-flink-connector)
-   [Apache Flink Processing Engine](https://flink.apache.org/)

##### Spark

-   [Orion-Spark Connector](https://github.com/ging/fiware-cosmos-orion-spark-connector)
-   [Apache Spark Processing Engine](https://spark.apache.org/)

#### Why use Cosmos?

As the state of the real world changes, the entities representing your IoT devices are constantly changing. Big data
analysis allows for the study of datasets coming from your context data which are too large for traditional
data-processing software. You can apply predictive analysis or user behaviour analytics to extract meaningful
conclusions as to the state of your smart solution and bring value to your solution.

---

<a name="quantumleap"/>

### QuantumLeap

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/orchestracities/ngsi-timeseries-api.svg)
![](https://img.shields.io/github/release-date/orchestracities/ngsi-timeseries-api.svg)
![](https://img.shields.io/github/last-commit/orchestracities/ngsi-timeseries-api.svg)

| :octocat: [Git Repository](https://github.com/orchestracities/ngsi-timeseries-api/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/quantumleap) | :books: [Documentation](https://quantumleap.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/quantum-leap) | :dart: [Roadmap](https://github.com/orchestracities/ngsi-timeseries-api/blob/master/docs/roadmap.md) |
| ---------------------------------------------------------------------------- | -------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |


#### What is QuantumLeap?

The QuantumLeap Generic Enabler focuses on persisting historical context data into
[time-series databases](https://en.wikipedia.org/wiki/Time_series_database) such as [CrateDB](https://crate.io/) with
reference to maintaining a scalable architecture and compatibility with visualization tools such as
[Grafana](http://www.grafana.com/)

#### Why use QuantumLeap?

The appropriate use of time series data analysis will depend on your use case and the reliability of the data
measurements you receive. Time series data analysis can be used to answer questions such as:

-   What was the maximum measurement of a device within a given time period?
-   What was the average measurement of a device within a given time period?
-   What was the sum of the measurements sent by a device within a given time period?

QuantumLeap offers great flexibility in measuring and monitoring time-series data and leverages existing
time-series-based databases to be able to support complex queries such as cross-entity queries (e.g. an average of
averages)

The **QuantumLeap** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.

---

<a name="canis-major"/>

### :seedling: Canis Major (Incubated)

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/CanisMajor.svg)
![](https://img.shields.io/github/last-commit/FIWARE/CanisMajor.svg)
![](https://img.shields.io/github/tag/FIWARE/CanisMajor.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/CanisMajor/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/canis-major) | :books: [Documentation](https://fiware.github.io/CanisMajor/) |
| ----------------------------------------------------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------- |


#### What is Canis Major?

Canis Major is a blockchain adaptor that supports various DLT, the adaptor aims to submit the data to DLT in Powered By
FIWARE Architecture. The adaptor will not be recommended to work for public-permissionless blockchains (especially
tokens, cryptocurrencies).

Canis Major is developed using NodeJS and supports the transaction to IOTA or ethereum clients such as hyplerledger
besu, quorum either using own smart contract or using [AEI Contract](https://github.com/FIWARE-Blockchain/AEIContract)
which is based on ERC721 Non-fungible tokens (recommended).

#### Why use Canis Major?

For some elements of context, it is important to maintain a log of transactions that is verifiable and unchangeable. The
use of distributed ledgers helps with this and provides a mechanism for persisting context events. Canis Major can act
as a pluggable micro-service that will create, sign and submit the transactions and also keeps the logs of transaction
receipts which can be queried using restful APIs.

Canis Major aims to make the integration of DLT's easier in "Powered By FIWARE" architectures.

---

<a name="ngsijs"/>

### :seedling: NGSI-JS Library (Incubated)

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/ficodes/ngsijs.svg)
![](https://img.shields.io/github/release-date/ficodes/ngsijs.svg)
![](https://img.shields.io/github/commits-since/ficodes/ngsijs/latest.svg)

| :octocat: [Git Repository](https://github.com/ficodes/ngsijs) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/ngsiproxy) | :books: [Site](http://ficodes.github.io/ngsijs/stable/NGSI.html) |
| ------------------------------------------------------------- | ----------- | ---------------------------------------------------------------- |


#### What is NGSI.js?

NGSI.js is the JavaScript library used by WireCloud for adding FIWARE NGSI capabilities to widgets and operators.
However, this library has also been designed to be used in other environments as normal web pages and clients/servers
running on Node.js.

This library has been developed following the FIWARE NGSI v1, NGSI v2 and the NGSI-LD specifications and has been tested
to work against multiple Context Brokers.

#### Why Use NGSI.js?

NGSI.js provides a series of boilerplate library functions allowing developers to connect and push context data to any
NGSI compliant context broker, the removes the need to write custom JavaScript code and speeds up development time.

---

<a name="pyspark-connector"/>

### :seedling: PySpark Connector

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/fiware-orion-pyspark-connector.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/fiware-orion-pyspark-connector.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/fiware-orion-pyspark-connector/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/fiware-orion-pyspark-connector) | :whale: [Docker Hub](https://hub.docker.com/r/rdlabengpa/fiware-orion-pyspark-connector) | :books: [Documentation](https://fiware-orion-pyspark-connector.readthedocs.io/) | :dart: [Roadmap](https://github.com/Engineering-Research-and-Development/fiware-orion-pyspark-connector/blob/main/docs/roadmap.md) |
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |


#### What is the PySpark Connector?

The PySpark Connector is a FIWARE Generic Enabler (GE) made of a receiver and a replier subcomponents allowing a
bidirectional communication between the NGSI-v2 and NGSI-LD Context Brokers and PySpark. The component works on a
low-level socket communication implementing a message passing interface between the two aforementioned counterparts.
This interface is equipped with a parser function, permitting the creation of both NGSI-v2 and NGSI-LD entities ready to
use in a custom PySpark algorithm. Once data are preprocessed inside the PySpark evnironment, the component also provide
a write-back interface (via REST API) to the context broker

#### Why use the PySpark Connector?

The PySpark Connector was created with the idea of expanding the use of compliant context brokers to merge with the
Python environment. Python is currently one of the most used programming languages for data analysis, providing lots of
scientific libraries for data processing and visualization. This connector is able to open a communication path between
these two instruments and to combine the advantages they provide at a minimal development cost.


---

<a name="apollo"/>

### :seedling: Apollo

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/apollo.svg)
![](https://img.shields.io/github/release-date/FIWARE/apollo.svg)
![](https://img.shields.io/github/commits-since/FIWARE/apollo/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/apollo) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/apollo) | :books: [Documentation](https://github.com/FIWARE/apollo/README.md) | :dart: **T.B.D**|
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |


#### What is FIWARE Apollo?

In order to allow an NGSI-LD broker to receive data sent through subscriptions by another broker, Apollo translates notifications 
into entity creation or update requests at the NGSI-LD API. For every entity received in the data-part of a notification, the proxy 
first tries a POST `/entities/{entityId}/attrs/` to update(and overwrite the properties) the entity. If **404 - NOT FOUND** is returned 
by the broker, the proxy will try to create the entity via POST `/entities`.

#### Why use the FIWARE Apollo?

Within data spaces it may be necessary to duplicate entity information across multiple brokers. For example, a receiving broker
may use the raw data provided via a subscription, process it to add value and then offer additional insights on that data. By 
using a _subscribe-and-duplicate_ mechanism, the data is automatically generated within a protected context broker and 
it is possible to permit access via a known protected data entrypoint which then adds data to a context broker.

---

<a name="o2k-connector"/>

### :seedling: O2K Connector

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/o2k-connector.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/o2k-connector.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/o2k-connector/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/o2k-connector) | :whale: **T.B.D** | :books: [Documentation](Engineering-Research-and-Development/o2k-connector/README.md) | :dart: **T.B.D**|
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |

#### What is the O2K-Connector?

O2K-Connector is a lightweight connector, written in Python, that enables context data sharing from Orion Context Broker 
towards Apache Kafka, supporting both NGSI-V2 and NGSI-LD interfaces. The connector supports both HTTP and MQTT protocols 
communication to be easily integrated in the most common industrial scenarios.

#### Why use the O2K-Connector?
Using O2K-Connector offers several benefits. Firstly, it simplifies the integration process between FIWARE and Apache 
technologies by providing an  efficient solution for data forwarding, eliminating the need for complex and time-consuming 
custom integration efforts. Secondly, O2K-Connector ensures reliable and scalable data transfer, allowing for real-time 
processing and analysis of data in Apache Kafka by supporting the faster and lighter MQTT  Orion subscription.

<a name="filip"/>

### :seedling: FiLip

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/RWTH-EBC/FiLiP.svg)
![](https://img.shields.io/github/release-date/RWTH-EBC/FiLiP.svg)
![](https://img.shields.io/github/commits-since/RWTH-EBC/FiLiP/latest.svg)

| :octocat: [Git Repository](https://github.com/RWTH-EBC/FiLiP) | :whale: **N/A** | :books: [Documentation](https://github.com/RWTH-EBC/FiLiP/README.md) | :dart: **T.B.D**|
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |

#### What is FiLip?

FiLiP (FIWARE Library for Python) is a python software development kit (SDK) for accelerating the development of web services that use Fiware's Generic Enablers (GEs) as backend.

It is mainly based on the Pydantic package which is a sophisticated library for data validation and settings management using python type annotations. Pydantic enforces type hints at runtime, and provides user friendly errors when data is invalid. We mainly use the Pydantic model to build our own data model structure required for efficient data model parsing and validation and interaction with FIWARE services' RestAPIs.

For API interaction, FiLiP relies on the well-known requests package. It is important to understand that we do not in any way restrict any features of requests.

Furthermore, FiLiP is designed to help with the fast development of FIWARE-based applications and avoid hundreds of lines of boilerplate, but it cannot substitute learning the basic concepts behind the used FIWARE components.

Currently, FiLiP supports APIs from Orion, LD-Brokers, IoT-Agents and Quantumleap. 

#### Why use FiLip?

The motivation for creating  a client library rather than relying on an auto-generated from the Open API spec is as follows:

-   Auto-generated code tends to become rather bulky and its quality strongly depends on the provided input data.
-   Manipulating generated code can result in a big hassle for maintenance if additional features need to be integrated.
-   The underlying NGSI (Next Generation Service Interface) for FIWARE is a rather generic specification. Hence, generated models
    may also be   of generic types as lists and dicts in Python. So there is no real benefit. Furthermore, there is no chance for
    reasonable validation and error handling.

<a name="entirety"/>

### :seedling: Entirety

[![](https://fiware.github.io/catalogue/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/N5GEH/n5geh.tools.entirety.svg)
![](https://img.shields.io/github/release-date/N5GEH/n5geh.tools.entirety.svg)
![](https://img.shields.io/github/commits-since/N5GEH/n5geh.tools.entirety/latest.svg)

| :octocat: [Git Repository](https://github.com/N5GEH/n5geh.tools.entirety) | :whale: [Docker](https://ghcr.io/n5geh/n5geh.tools.entirety) | :books: [Documentation](https://github.com/N5GEH/n5geh.tools.entirety/README.md) | :dart: **T.B.D**|
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |

#### What is Entirety?

Entirety is a web-based graphical user interface (GUI) meant to provide easy access to some of FIWARE's Generic Enablers (GE) without requiring deeper knowledge on their APIs: Context Brokers like Orion and the IoT Agent JSON. Entirety is python-based and relies on the FIWARE Library for Python (FiLiP) for the communication with the GE APIs.

Entirety holds modules (as displayed on the left hand side of the GUI) providing features to perform CRUD (create, read, update, delete) operations to entities in the Context Broker, devices in the IoT Agent, and subscriptions / notifications to QuantumLeap or other applications. Furthermore, Entirety provides a graphical overview of the semantic relationships between entities in the Semantics module as well as a store for standardized data models that can be either created or imported from external sources.

#### Why use Entirety?

Entirety simplifies the process of updating context data and displays relationships between entities allowing for simpler interactions between components.
