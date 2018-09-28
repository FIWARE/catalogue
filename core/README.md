
# Core Context Management

If you want your application to be “smart”, you have to first make it “aware”. FIWARE provides you with means to produce, gather, publish and consume context information at large scale and exploit it to transform your application into a truly smart application.

Context information is represented through values assigned to attributes that characterize those entities relevant to your application.

To learn more about Core Context Management Enablers, check out the [documentation](https://fiwaretourguide.readthedocs.io/en/latest/development-context-aware-applications/introduction/)


## Orion

* [Git Repository](https://github.com/telefonicaid/fiware-orion.git)
* [Docker Hub](https://hub.docker.com/r/fiware/orion/)
* [Documentation](https://fiware-orion.rtfd.io)

## What is Orion?

The Orion Context Broker is an implementation of the Publish/Subscribe Context Broker GE, providing the NGSI interfaces. Using these interfaces, clients can do several operations:

* Register context producer applications, e.g. a temperature sensor within a room
* Update context information, e.g. send updates of temperature
* Being notified when changes on context information take place (e.g. the temperature has changed) or with a given frequency (e.g. get the temperature each minute)
* Query context information. The Orion Context Broker stores context information updated from applications, so queries are resolved based on that information.

Apart from Orion Context Broker, there are other related components that you may find useful, such as Cygnus or Wilma PEP Proxy. Cygnus implements a connector for context data coming from Orion Context Broker and aimed to be stored in a specific persistent storage, such as HDFS, CKAN or MySQL. Wilma is a PEP proxy meant to secure Orion Context Broker, by intercepting every request sent to the Orion, validating it against the Access Control component.


## Why Use Orion?

If you are developing a Data/Context scenario, a broker like the Orion Context Broker is a must. You would need a component in the architecture able to mediate between consumer producers (e.g. sensors) and the context consumer applications (e.g. an smartphone applications taking advantage of the context information provided by the sensors). The Orion Context Broker fulfils this functionality in your architecture.

Orion is an implementation of the FIWARE Publish/Subscribe Context Broker Generic Enabler. More specifically, Orion implements the following API and Open Specification:

* [NGSI v2](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)



The **Orion** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/orion.json&query=$.stability&colorB=blue)


## Cygnus

* [Git Repository](https://github.com/telefonicaid/fiware-cygnus.git)
* [Docker Hub](https://hub.docker.com/r/fiware/cygnus-ngsi/)
* [Documentation](https://fiware-cygnus.rtfd.io)

### What is Cygnus?

Cygnus is a is an easy to use, powerful, and reliable system to process and distribute data. Internally, Cygnus is based on Apache NiFi, NiFi is a dataflow system based on the concepts of flow-based programming. It supports powerful and scalable directed graphs of data routing, transformation, and system mediation logic. It was built to automate the flow of data between systems. While the term 'dataflow' is used in a variety of contexts, we use it here to mean the automated and managed flow of information between systems


Cygnus 2.0 is based on Apache NiFi, a technology addressing the design and execution of data collection and persistence agents.
An agent is basically composed of a listener or source in charge of receiving the data, a channel where the source puts the data once it has been transformed into a Flume event, and a sink, which takes Flume events from the channel in order to persist the data within its body into a third-party storage.

## Why Use Cygnus?

Cygnus plays the role of a connector between Orion Context Broker (which is a NGSI source of data) and many external and FIWARE storages like MySQL, MongoDB etc. You should use Cygnus if you need to process and persist Context Data so that you can keep a historical record.


Cygnus is designed to run specific set of processors and templates for persistence context data to multiple sinks.

Current stable release is able to persist data to many  third-party storages including:

* NGSI context data in and out.
* MySQL, the well-known relational database manager.
* MongoDB, the NoSQL document-oriented database.
* PostgreSQL, the well-know relational database manager.




The **Cygnus** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/cygnus.json&query=$.stability&colorB=blue)

## STH Comet

* [Git Repository](https://github.com/telefonicaid/fiware-sth-comet.git)
* [Docker Hub](https://hub.docker.com/r/fiware/sth-comet/)
* [Documentation](https://fiware-sth-comet.rtfd.io)

### What is STH Comet?

Short Time Historic (STH) - Comet is a component of the FIWARE ecosystem in charge of managing (storing and retrieving) historical raw and aggregated time series context information about the evolution in time of context data (i.e., entity attribute values) registered in an Orion Context Broker instance.

### Why use STH Comet?

The creation and analysis of trend data is a common requirement of context-driven systems - therefore the FIWARE platform offers a generic enabler (STH-Comet) specifically to deal with the issue of persisting and interpreting time series data.

Within the FIWARE platform, historical context data can be persisted to a database  - this results in a series of data points. Each time-stamped data point represents the state of context entities at a given moment in time. The individual data points are relatively meaningless on their own, it is only through combining a series data points that meaningful statistics such as maxima, minima and trends can be observed.

The **STH-Comet** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/sth_comet.json&query=$.stability&colorB=blue)




