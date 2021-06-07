# Core Context Management

If you want your application to be “smart”, you have to first make it “aware”. FIWARE provides you with means to
produce, gather, publish and consume context information at large scale and exploit it to transform your application
into a truly smart application.

Context information is represented through values assigned to attributes that characterize those entities relevant to
your application.

To learn more about Core Context Management Enablers, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/core/introduction/)

## Orion

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-orion.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-orion.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-orion/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-orion/) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/orion/) | :books: [Documentation](https://fiware-orion.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/orion) | :dart: [Roadmap](https://github.com/telefonicaid/fiware-orion/blob/master/doc/roadmap.md) |
| ------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------------------------------------------------- | ------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------- |


### What is Orion?

The Orion Context Broker is an implementation of the Publish/Subscribe Context Broker GE, providing the NGSI interfaces.
Using these interfaces, clients can do several operations:

-   Register context producer applications, e.g. a temperature sensor within a room
-   Update context information, e.g. send updates of temperature
-   Being notified when changes on context information take place (e.g. the temperature has changed) or with a given
    frequency (e.g. get the temperature each minute)
-   Query context information. The Orion Context Broker stores context information updated from applications, so queries
    are resolved based on that information.

### Why Use Orion?

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

### Quality Assurance

The **Orion** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/orion.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/orion.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/orion.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/orion.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/orion.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/orion.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/orion.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/orion.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/orion.json&query=$.stability&colorB=blue)

## Cygnus

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-cygnus.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-cygnus.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-cygnus/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-cygnus/) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/cygnus-ngsi/) | :books: [Documentation](https://fiware-cygnus.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/cygnus) | :dart: [Roadmap](https://github.com/telefonicaid/fiware-cygnus/blob/master/doc/roadmap.md) |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |


### What is Cygnus?

Cygnus is a connector in charge of persisting context data sources into other third-party databases and storage systems,
creating a historical view of the context. Internally, Cygnus is based on Apache Flume,
[Flume](https://flume.apache.org/) is a data flow system based on the concepts of flow-based programming. It supports
powerful and scalable directed graphs of data routing, transformation, and system mediation logic. It was built to
automate the flow of data between systems. While the term 'dataflow' can be used in a variety of contexts, we use it
here to mean the automated and managed flow of information between systems.

Each data persistence agent within Cygnus is composed of three parts - a listener or source in charge of receiving the
data, a channel where the source puts the data once it has been transformed into a Flume event, and a sink, which takes
Flume events from the channel in order to persist the data within its body into a third-party storage.

### Why Use Cygnus?

Persisting historical context data is useful for big data analysis - it can be used to discover trends, or data can be
sampled and aggregated to remove the influence of outlying data measurements. However within each Smart Solution, the
significance of each entity type will differ and entities and attributes may need to be sampled at different rates.

Since the business requirements for using context data differ from application to application, no single standard use
case for historical data persistence exists. Therefore rather than overloading the context broker with the job of
historical context data persistence, this role has been separated out into a separate, highly configurable component -
Cygnus.

Cygnus plays the role of a connector between the Orion Context Broker (which is an
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
source of data) and a wide range of external systems such as [MySQL](https://www.mysql.com/),
[MongoDB](https://www.mongodb.org/) etc. You should use Cygnus if you need to process and persist context data so that
you can keep a historical record. Cygnus can also be used the filter and repost context data back into Orion.

### Quality Assurance

The **Cygnus** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/cygnus.json&query=$.stability&colorB=blue)

## STH Comet

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-sth-comet.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-sth-comet.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-sth-comet/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-sth-comet/) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/sth-comet/) | :books: [Documentation](https://fiware-sth-comet.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/sth-comet) | :dart: [Roadmap](https://github.com/telefonicaid/fiware-sth-comet/blob/master/doc/roadmap.md) |
| ----------------------------------------------------------------------------- | ---------------------------------------------------------------- | --------------------------------------------------------- | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |


### What is STH Comet?

Short Time Historic (STH) - Comet is a component of the FIWARE ecosystem in charge of managing (storing and retrieving)
historical raw and aggregated time series context information about the evolution in time of context data (i.e., entity
attribute values) registered in an Orion Context Broker instance.

### Why use STH Comet?

The creation and analysis of trend data is a common requirement of context-driven systems - therefore the FIWARE
platform offers a generic enabler (STH-Comet) specifically to deal with the issue of persisting and interpreting time
series data.

Within the FIWARE platform, historical context data can be persisted to a database - this results in a series of data
points. Each time-stamped data point represents the state of context entities at a given moment in time. The individual
data points are relatively meaningless on their own, it is only through combining a series data points that meaningful
statistics such as maxima, minima and trends can be observed.

### Quality Assurance

The **STH-Comet** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/sth_comet.json&query=$.stability&colorB=blue)

## Draco

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-draco.svg)
![](https://img.shields.io/github/release-date/ging/fiware-draco.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-draco/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-draco) | :whale: [Docker Hub](https://hub.docker.com/r/ging/fiware-draco) | :books: [Documentation](https://fiware-draco.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/draco) | :dart: [Roadmap](https://github.com/ging/fiware-draco/blob/master/docs/roadmap.md) |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------- |


### What is Draco?

Draco is a connector in charge of persisting context data sources into other third-party databases and storage systems,
creating a historical view of the context. Internally, Draco is based on Apache NiFi. [NiFi](https://nifi.apache.org) is
a popular framework for data management and processing from multiple sources.

Draco plays the role of a connector between the Orion Context Broker (which is an
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
source of data) source of data) and a wide range of external systems such as MySQL, MongoDB etc. You can use Draco if
you need to process and persist context data so that you can keep a historical record. Draco can also be used to filter
and repost context data back into Orion.

### Why Use Draco?

Persisting historical context data is useful for big data analysis - it can be used to discover trends, or data can be
sampled and aggregated to remove the influence of outlying data measurements. However within each Smart Solution, the
significance of each entity type will differ and entities and attributes may need to be sampled at different rates.

Since the business requirements for using context data differ from application to application, no single standard use
case for historical data persistence exists. Therefore rather than overloading the context broker with the job of
historical context data persistence, this role has been separated out into another enabler. Amongst the advantages of
the component, Draco offers a flexible graphical interface so it is possible to amend your data flows according to your
current business needs.

### Quality Assurance

The **Draco** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/draco.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/draco.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/draco.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/draco.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/draco.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/draco.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/draco.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/draco.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/draco.json&query=$.stability&colorB=blue)

## Cosmos

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-cosmos-orion-flink-connector.svg)
![](https://img.shields.io/github/release-date/ging/fiware-cosmos-orion-flink-connector.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-cosmos-orion-flink-connector/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-cosmos) | :whale: Docker Hub : **none** | :books: [Flink](https://fiware-cosmos-flink.readthedocs.io) | :books: [Spark](https://fiware-cosmos-spark.readthedocs.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/cosmos) | :dart: [Roadmap](https://github.com/ging/fiware-cosmos/blob/master/ROADMAP.md) |
| ----------------------------------------------------------------- | ----------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |


### What is Cosmos?

The Cosmos Big Data Analysis GE is a set of tools that help achieving the tasks of Streaming and Batch processing over
context data. These tools are:

#### Flink

-   [Orion-Flink Connector](https://github.com/ging/fiware-cosmos-orion-flink-connector)
-   [Apache Flink Processing Engine](https://flink.apache.org/)

#### Spark

-   [Orion-Spark Connector](https://github.com/ging/fiware-cosmos-orion-spark-connector)
-   [Apache Spark Processing Engine](https://spark.apache.org/)

### Why use Cosmos?

As the state of the real world changes, the entities representing your IoT devices are constantly changing. Big data
analysis allows for the study of datasets coming from your context data which are too large for traditional
data-processing software. You can apply predictive analysis or user behaviour analytics to extract meaningful
conclusions as to the state of your smart solution and bring value to your solution.

### Quality Assurance

The **Cosmos** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/cosmos.json&query=$.stability&colorB=blue)

---

<a name="quantumleap"/>

## QuantumLeap

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/smartsdk/ngsi-timeseries-api.svg)
![](https://img.shields.io/github/last-commit/smartsdk/ngsi-timeseries-api.svg)
![](https://img.shields.io/github/tag/smartsdk/ngsi-timeseries-api.svg)

| :octocat: [Git Repository](https://github.com/smartsdk/ngsi-timeseries-api/) | :whale: [Docker Hub](https://hub.docker.com/r/smartsdk/quantumleap/) | :books: [Documentation](https://quantumleap.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/quantum-leap) | :dart: [Roadmap](https://github.com/smartsdk/ngsi-timeseries-api/blob/master/docs/roadmap.md) |
| ---------------------------------------------------------------------------- | -------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |


### What is QuantumLeap?

The QuantumLeap Generic Enabler focuses on persisting historical context data into
[time-series databases](https://en.wikipedia.org/wiki/Time_series_database) such as [CrateDB](https://crate.io/) with
reference to maintaining a scalable architecture and compatibility with visualization tools such as
[Grafana](http://www.grafana.com/)

### Why use QuantumLeap?

The appropriate use of time series data analysis will depend on your use case and the reliability of the data
measurements you receive. Time series data analysis can be used to answer questions such as:

-   What was the maximum measurement of a device within a given time period?
-   What was the average measurement of a device within a given time period?
-   What was the sum of the measurements sent by a device within a given time period?

QuantumLeap offers great flexibility in measuring and monitoring time-series data and leverages existing
time-series-based databases to be able to support complex queries such as cross-entity queries (e.g. an average of
averages)

The **QuantumLeap** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.

<a name="scorpio"/>

## Scorpio

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/badge/license-BSD--4--clause-green)
![](https://img.shields.io/github/release-date/ScorpioBroker/ScorpioBroker.svg)
![](https://img.shields.io/github/commits-since/ScorpioBroker/ScorpioBroker/latest.svg)

| :octocat: [Git Repository](https://github.com/ScorpioBroker/ScorpioBroker) | :whale: [Docker Hub](https://cloud.docker.com/u/scorpiobroker/) | :books: [Documentation](https://scorpio.rtfd.io/) |
| -------------------------------------------------------------------------- | --------------------------------------------------------------- | ------------------------------------------------- |


### What is Scorpio?

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

### Why Use Scorpio?

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

The **Scorpio** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.

<a name="orion-ld"/>

## :seedling: Orion-LD (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/context.Orion-LD.svg)
![](https://img.shields.io/github/release-date/FIWARE/context.Orion-LD.svg)
![](https://img.shields.io/github/commits-since/FIWARE/context.Orion-LD/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/context.Orion-LD/) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/orion-ld/) | :books: [Documentation](https://github.com/FIWARE/context.Orion-LD/tree/develop/doc/manuals-ld) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/core/orion-ld) | :dart: [Roadmap](https://github.com/FIWARE/context.Orion-LD/blob/develop/doc/roadmap.md) |
| ----------------------------------------------------------------------- | --------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |


### What is Orion-LD?

Orion-LD is an alternative NGSI-LD Context Broker written in C/C++. It is a standalone executable and therefore small,
fast, lightweight and easy to handle. Context brokers allow for the management and requesting context of information in
a structured manner based on linked data standards following the NGSI-LD specification. Orion-LD is more suitable for
smaller installations or possibly in embedded environments - it currently supports only a subset of the standard NGSI-LD
endpoints.

### Why Use Orion-LD?

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

<a name="stellio"/>

## :seedling: Stellio (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/stellio-hub/stellio-context-broker.svg)
![](https://img.shields.io/github/last-commit/stellio-hub/stellio-context-broker.svg)
![](https://img.shields.io/github/tag/stellio-hub/stellio-context-broker.svg)

| :octocat: [Git Repository](https://github.com/stellio-hub/stellio-context-broker/) | :whale: [Docker Hub](https://hub.docker.com/orgs/stellio/repositories/) | :books: [Documentation](https://stellio.rtfd.io/) |
| ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------- |


### What is Stellio?

Stellio is a NGSI-LD context broker implementing the API specification published by the ETSI Industry Specification
Group for Context Information Management (ISG CIM). Context information means any piece of data which is contextualized
in time, space and in relation to other data through linked data principles.

Stellio is built around a Kafka message broker for improved extensibility, scalability and decoupling of services. These
services embed a graph database (Neo4J) for context management as well as a timeseries (TimescaleDB) and geospatial
(PostGIS) database to manage temporal and geospatial properties.

Stellio is developed in Kotlin and lays on the Spring Boot and Spring Cloud frameworks. It is based on a micro-services
architecture and follows the reactive and functional paradigms.

Stellio acts as a central broker. It currently supports major operations on context information, subscriptions and
temporal queries and targets full compliance with the NGSI-LD specification by the end of 2020. It does not aim to
support NGSIv1 and NGSIv2 specifications.

### Why use Stellio?

In order to take the full benefit of the linked data nature of the NGSI-LD data model, Stellio uses the Neo4J labelled
property graph database for the storage of the context information. Beside benefiting from Neo4J capabilities to
efficiently handle graph data, this provides the underlying structure to perform syntactic and semantic validation of
data, and opens up the door to exploit and analyze the graph with graph driven data science algorithms.

In addition, Stellio includes the support of the NGSI-LD API for querying the temporal evolution of entities, as long as
the interface for performing geospatial queries. The included TimescaleDB and PostGIS extensions of the well-known
PostgreSQL database allow efficient queries while allowing off-the-shelves storing of large volumes of historical data.

<a name="canis-major"/>

## :seedling: Canis Major (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/core.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/CanisMajor.svg)
![](https://img.shields.io/github/last-commit/FIWARE/CanisMajor.svg)
![](https://img.shields.io/github/tag/FIWARE/CanisMajor.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/CanisMajor/) | :whale: [Docker Hub](https://hub.docker.com/r/singhhp10691/canismajor) | :books: [Documentation](https://fiware.github.io/CanisMajor/) |
| ----------------------------------------------------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------- |


### What is Canis Major?

Canis Major is a blockchain adaptor that supports various DLT, the adaptor aims to submit the data to DLT in Powered By
FIWARE Architecture. The adaptor will not be recommended to work for public-permissionless blockchains (specially
tokens, cryptocurrencies)..

### Why use Canis Major?

For some elements of context, it is important to maintain a log of transactions which is verifiable and unchangeable.
Use of distributed legers help with this and provide a mechanism of persisting context events.
