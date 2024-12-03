# Robotics

## :seedling: Fast DDS (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./README.md)
![License](https://img.shields.io/github/license/eProsima/Fast-RTPS.svg)
![](https://img.shields.io/github/release-date/eProsima/Fast-RTPS.svg)
![](https://img.shields.io/github/commits-since/eProsima/Fast-RTPS/latest.svg)

| :octocat: [Git Repository](https://github.com/eProsima/Fast-RTPS) | :whale: Docker Hub : TBD | :books: [Documentation](https://eprosima-fast-rtps.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/robotics/fast-rtps) | :dart: [Roadmap](https://github.com/eProsima/Fast-RTPS/blob/master/roadmap.md) |
| ----------------------------------------------------------------- | ------------------------ | ------------------------------------------------------------ | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |


eProsima Fast DDS is a C++ implementation of the RTPS (Real Time Publish Subscribe) protocol, which provides
publisher-subscriber communications over unreliable transports such as UDP, as defined and maintained by the Object
Management Group (OMG) consortium. Fast DDS provides both the [OMG DDS 1.4](https://www.omg.org/spec/DDS/1.4) and the
[OMG RTPS 2.2](https://www.omg.org/spec/DDSI-RTPS/2.2/) interoperable wire-protocol standards.

eProsima Fast DDS holds the benefit of being standalone and up-to-date, as most vendor solutions either implement RTPS
as a tool to implement DDS or use past versions of the specification.

## :seedling: Micro XRCE-DDS (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./robotics/README.md)
![License](https://img.shields.io/github/license/eProsima/Micro-XRCE-DDS.svg)
![](https://img.shields.io/github/release-date/eProsima/Micro-XRCE-DDS.svg)
![](https://img.shields.io/github/commits-since/eProsima/Micro-XRCE-DDS/latest.svg)

| :octocat: [Git Repository](https://github.com/eProsima/Micro-XRCE-DDS) | :whale: Docker Hub : TBD | :books: [Documentation](https://micro-xrce-dds.rtfd.io/) | :mortar_board: Academy : **TBD** | :dart: [Roadmap](https://github.com/eProsima/Micro-XRCE-DDS/blob/master/roadmap.md) |
| ---------------------------------------------------------------------- | ------------------------ | -------------------------------------------------------- | -------------------------------- | ----------------------------------------------------------------------------------- |


### What is Micro XRCE-DDS?

eProsima Micro XRCE-DDS is an IoT-oriented middleware based on a publish-subscribe messaging pattern.

Micro XRCE-DDS follows a client-server architecture where low resource devices (Micro XRCE-DDS Clients) are connected to
a server (Micro XRCE-DDS Agent).

On the one hand, Micro XRCE-DDS Client (C library) is focused on addressing the challenges of resource-constrained
environments such as a microcontroller. For this reason, this library is designed to offer a completely dynamic-memory
free implementation and really low memory usage (~2.5 KB of stack usage for a simple publisher-subscribe application).

On the other hand, Micro XRCE-DDS Agent (C++ application) is a self-contained application which is in charge of
providing a presence to the Clients in the DDS (Data Distribution Service) global data space.

This multi-platform application (Linux and Windows) offers to Clients high-performance access to DDS space thanks to the
Fast RTPS framework. Micro XRCE-DDS is a standalone C/C++ implementation of the OMG (Object Management Group) DDS-XRCE
(DDS for eXtremely Resource Constrained Environments Specification).

### Why use Micro XRCE-DDS?

In contrast to other IoT-oriented middleware such as MQTT or CoAP which follow centralized-data approach over a single
transport protocol, Micro XRCE-DDS offers a decentralized-data approach over multiple transport protocols such as UPD,
TCP or Serial. Furthermore, Micro XRCE-DDS is designed to offer a really low memory footprint, which makes this product
particularly appealing for IoT communication in resource-constrained devices.

The **Micro XRCE-DDS** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.

## IoT Agent for OPC UA

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/iotagent-opcua.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/iotagent-opcua.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/iotagent-opcua/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/iotagent-opcua) | :whale: [Docker Hub](https://hub.docker.com/r/iotagent4fiware/iotagent-opcua) | :books: [Documentation](https://iotagent-opcua.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/Engineering-Research-and-Development/iotagent-opcua/blob/master/roadmap.md) |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |


IoT Agent accepting data from OPC UA devices.

This IoT Agent is designed to be a bridge between the [OPC Unified Architecture](http://www.opcua.us/) protocol and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## :seedling: IoT Agent for AAS

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/iotagent-aas.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/iotagent-aas.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/iotagent-aas/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/iotagent-aas) | :whale: [Docker Hub](https://hub.docker.com/r/iotagent4fiware/iotagent-aas) | :books: None | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: None |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |


IoT Agent accepting data from OPC UA devices.

This IoT Agent is designed to be a bridge between the [Administration Asset Shell](https://reference.opcfoundation.org/I4AAS/v100/docs/4.1) protocol and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## :seedling: Web UI for IoT Agents

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/iotagent-ui.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/iotagent-ui.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/iotagent-ui/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/iotagent-ui) | :whale: [Docker Hub](https://hub.docker.com/r/iotagent4fiware/iotagent-ui-spf) | :books: None| :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: None |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |


The Angular-based web Single Page Application (SPA) that enables user-friendly interaction with FIWARE IoT Agents.

## :seedling: FIROS (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/robotics.svg)](./robotics/README.md)
![License](https://img.shields.io/github/license/iml130/firos.svg)
![](https://img.shields.io/github/release-date/iml130/firos.svg)
![](https://img.shields.io/github/commits-since/iml130/firos/latest.svg)

| :octocat: [Git Repository](https://github.com/iml130/firos) | :whale: Docker Hub : TBD | :books: [Documentation](https://firos.rtfd.io/) | :mortar_board: Academy : **TBD** | :dart: [Roadmap](https://github.com/iml130/firos/blob/master/doc/roadmap.md) |
| ----------------------------------------------------------- | ------------------------ | ----------------------------------------------- | -------------------------------- | ---------------------------------------------------------------------------- |


### What is FIROS?

FIROS is a tool that helps connecting robots to the cloud. For this purpose it uses the Robot Operating System (ROS) and
the FIWARE Context Broker as a way to publish and listen robot's data.

FIROS works as a translator between the robotics field and the cloud world, transforming ROS messages into NGSI to
publish them in the cloud, and vice versa.

The **FIROS** project is part of [FIWARE](https://fiware.org/) and will be rated as part of the next release.
