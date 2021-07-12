# Context Processing, Analysis and Visualization

To learn more about context processing, analysis and visualization, check out the documentation on
[Big Data Analysis](https://fiwaretourguide.readthedocs.io/en/latest/processing/cosmos/introduction/)
[Visualization](https://fiwaretourguide.readthedocs.io/en/latest/visualization/introduction/) and
[Media Streams](https://fiwaretourguide.readthedocs.io/en/latest/processing/kurento/introduction//)

## Wirecloud

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/visualization.svg)](./README.md)
![License](https://img.shields.io/badge/License-AGPLv3+%20with%20classpath--like%20exception-orange.svg)
![](https://img.shields.io/github/release-date/Wirecloud/wirecloud.svg)
![](https://img.shields.io/github/commits-since/Wirecloud/wirecloud/latest.svg)

| :octocat: [Git Repository](https://github.com/Wirecloud/wirecloud) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/wirecloud/) | :books: [Documentation](https://wirecloud.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/wirecloud) | :dart: [Roadmap](https://github.com/Wirecloud/wirecloud/blob/develop/roadmap.md) |
| ------------------------------------------------------------------ | ---------------------------------------------------------------- | --------------------------------------------------- | ---------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |


### What is Wirecloud

Wirecloud is a web mashup tool designed to ease the development of operational dashboards. This allows end users to
easily create web applications and dashboards without programming skills and to visualize data of interest and control
their environment.

Web application mashups integrate heterogeneous data, application logic, and UI components (widgets) sourced from the
Web to create new coherent and value-adding composite applications. They are targeted at leveraging the "long tail" of
the Web of Services (a.k.a. the Programmable Web) by exploiting rapid development, DIY, and shareability.

Mashups typically serve a specific situational (i.e. immediate, bespoke, short-term) need, frequently with limited
potential for reuse. Is this "situational" character which precludes them to be offered as 'off-the-shelf' functionality
by solution providers, and therefore creates the need for a tool like Wirecloud.

### Why use Wirecloud

Web application mashups can be manually developed using conventional web programming technologies but this fails to take
full advantage of the approach. Mashup tools and platforms like Wirecloud aim at development paradigms that do not
require programming skills and, hence, target end users, being them citizens, knowledge workers, portal designers, etc.

By using Wirecloud you have access to the following key features:

-   Innovate through experimentation by choosing the best suited widgets, operators and prefab mashup-lets for your
    devised mashup from a vast, ever-growing distributed catalogue
-   The wiring editor allows you to easily connect widgets in a mashup to create a full-fledged dashboard with RIA
    functionality
-   The piping editor allows you to easily connect widgets to backend services or data sources through an extendable set
    of operators, including filters, aggregators, adapters, etc.
-   Share your newly created mashup with other colleagues and users. Comment it, tag it and rate it to foster
    discoverability and shareability
-   Help to build a strong community by commenting, tagging and rating others' widgets, operators and mashups. The
    platform will also do its best to complement your contribution

## Kurento

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/media-streams.svg)](./README.md)
![License](https://img.shields.io/github/license/Kurento/kurento-media-server.svg)
![](https://img.shields.io/badge/tag-6.9.0-blue.svg)

| :octocat: [Git Repository](https://github.com/Kurento/kurento-media-server) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/stream-oriented-kurento/) | :books:[Documentation](https://kurento.rtfd.io/) | :page_facing_up: [Site](https://www.kurento.org/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/kurento) | :dart: [Roadmap](https://github.com/Kurento/kurento-media-server/blob/master/ROADMAP.md) |
| --------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------- | -------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |


### What is Kurento?

The Stream Oriented GE is a development framework that provides an abstraction layer for multimedia capabilities,
allowing non-expert developers to include interactive media components to their applications. The Open API is at the
heart of this enabler - A REST-like API, based on JSON RPC 2.0, exposing a toolbox of Media Elements that can be chained
to create complex media processing pipelines. The Stream Oriented GE provides several client implementations of the Open
API. The Java client allows developers to include media capabilities to Java or JEE applications. A JavaScript client is
also ready to be used with Node.js or directly in browser applications. Thanks to these, the Stream Oriented GE provides
developers with a set of robust end-to-end interoperable multimedia communication capabilities to deal with the
complexity of transport, encoding/decoding, processing and rendering tasks in an easy and efficient way.

### Why use Kurento?

The development of interactive multimedia applications is a complex task, which usually requires specific expertise and
huge investments. Stream Oriented GE brings a number of abstractions and enablers democratizing multimedia technologies
and making possible to any WWW developer to create powerful applications involving advanced features such as:
interoperable audiovisual communications, computer vision, augmented reality, flexible media playing, recording, etc.
The Stream Oriented GE will be particularly useful and intuitive for developers familiar with Java EE and JavaScript
technologies, although its capabilities are also exposed through agnostic interoperable network interfaces that can be
consumed from any other language of system. In summary, it makes possible the development of complex interactive
multimedia communications in a fast, simple and easy way.

## FogFlow

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/processing.svg)](./README.md)
![License](https://img.shields.io/badge/license-BSD--4--clause-green)
![](https://img.shields.io/github/release-date/smartfog/fogflow.svg)
![](https://img.shields.io/github/commits-since/smartfog/fogflow/latest.svg)

| :octocat: [Git Repository](https://github.com/smartfog/fogflow) | :whale: [Docker Hub](https://hub.docker.com/r/fogflow) | :books: [Documentation](https://fogflow.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/fogflow) | :dart: [Roadmap](https://github.com/smartfog/fogflow/blob/master/roadmap.md) |
| --------------------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------------- | -------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |


### What is FogFlow?

FogFlow is an IoT edge computing framework to orchestrate dynamic processing flows over cloud and edges. It can
dynamically and automatically composite multiple NGSI-based data processing tasks to form high level IoT services, and
then orchestrate and optimize the deployment of those services within a shared cloud-edge environment, with regards to
the availability, locality, and mobility of IoT devices.

### Why use FogFlow?

The cost of a cloud-only solution is too high to run a large scale IoT system with >1000 geo-distributed devices many
IoT services require fast response time, such as <10ms end-to-end latency service providers are facing huge complexity
and cost to fast design and deploy their IoT services in a cloud-edge environment - business demands are changing fast
over time and service providers need to try out and release any new services over their shared cloud-edge infrastructure
at a fast speed lack of programming model to fast design and deploy IoT services over geo-distributed ICT infrastructure
lack of interoperability and openness to share and reuse data and dervied results across various applications

---

## :seedling: Perseo (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/processing.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/perseo-core.svg)
![](https://img.shields.io/github/release-date/telefonicaid/perseo-core.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/perseo-core/latest.svg)

**Core**

| :octocat: [Git Repository](https://github.com/telefonicaid/perseo-core/) | :whale: [Docker Hub](https://hub.docker.com/r/telefonicaiot/perseo-core/) | :books: [Documentation](https://perseo.rtfd.io/) | :dart: [Roadmap](https://github.com/telefonicaid/perseo-fe/blob/master/documentation/roadmap.md) |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------------ |


**Frontend**

| :octocat: [Git Repository](https://github.com/telefonicaid/perseo-fe/) | :whale: [Docker Hub](https://hub.docker.com/r/telefonicaiot/perseo-fe/) | :books: [Documentation](https://perseo.rtfd.io) | :dart: [Roadmap](https://github.com/telefonicaid/perseo-fe/blob/master/documentation/roadmap.md) |
| ---------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------------ |


### What is Perseo?

The Perseo Context-aware Complex Event Processing (Context-aware CEP) GE is a module that listens to events from context
data (coming from Orion Context Broker or any other NGSI-compliant system or service) in real-time, and generates
immediate insight, enabling thus instant response to changing conditions

### Why use Perseo?

Event processing in a Smart Solution enables you to listen to changes in the incoming context data and identify patterns
in order to react by triggering external actions (e.g sending eMails or SMS messages)

Perseo is an NSGI compliant rules-based query engine for event processing based on Esper CEP which means that rules can
be defined using SQL-like queries in EPL eliminating the need to write code to hard-wire event conditions. Therefore
Perseo can act as a bridge between the context data and other external systems.

The **Perseo** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.

## :new: OpenVidu (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/processing.svg)](./README.md)
![License](https://img.shields.io/github/license/OpenVidu/openvidu.svg)
![](https://img.shields.io/github/release-date/OpenVidu/openvidu.svg)
![](https://img.shields.io/github/commits-since/OpenVidu/openvidu/latest.svg)

| :octocat: [Git Repository](https://github.com/OpenVidu/openvidu) | :whale: T.B.D. | :books: [Site](https://openvidu.io/docs/home/) |
| ---------------------------------------------------------------- | -------------- | ---------------------------------------------- |


### What is OpenVidu?

The Openvidu Generic Enabler simplifies real-time processing of media streams managed or provided by Kurento, providing
a simple HTTP REST API that manages the streams and provides an extra security layer simplifying the transformation of
video cameras into sensors as well as the incorporation of advanced application functions (integrated audiovisual
communications, augmented reality, flexible media playing and recording, etc

### Why Use OpenVidu?

Openvidu is a simple (easy to deploy/ easy to use) way to have advanced media streams processing and communications. It
is opensource, compatible with multiple frontend and backend technologies. It provides support for many media
transmission protocols. It hides the specifics and allows you to focus in your use case and business logic.

The **OpenVidu** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.
