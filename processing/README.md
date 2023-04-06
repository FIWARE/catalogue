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

| :octocat: [Git Repository](https://github.com/Wirecloud/wirecloud) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/wirecloud) | :books: [Documentation](https://wirecloud.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/processing/wirecloud) | :dart: [Roadmap](https://github.com/Wirecloud/wirecloud/blob/develop/roadmap.md) |
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

| :octocat: [Git Repository](https://github.com/telefonicaid/perseo-core/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/perseo-core) | :books: [Documentation](https://fiware-perseo-fe.readthedocs.io/en/latest/) | :dart: [Roadmap](https://github.com/telefonicaid/perseo-fe/blob/master/documentation/roadmap.md) |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |


**Frontend**

| :octocat: [Git Repository](https://github.com/telefonicaid/perseo-fe/) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/perseo) | :books: [Documentation](https://fiware-perseo-fe.readthedocs.io/en/latest/) | :dart: [Roadmap](https://github.com/telefonicaid/perseo-fe/blob/master/documentation/roadmap.md) |
| ---------------------------------------------------------------------- | ----------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |


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
