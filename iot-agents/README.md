# Interface to the internet of Things

Connecting IoT devices or “things” involves the need to overcome a common set of problems arising in the different
layers of the communication model. Using sensor data or acting upon them requires interaction with a heterogeneous
environment of devices running different protocols (due to the lack of globally accepted standards), dispersed and
accessible through multiple wireless technologies.

To learn more about the Interface to the internet of Things, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/iot-agents/introduction/)

### What are IoT Agents?

The IoT Agent (IDAS) component is an implementation of the Backend Device Management GE, according to the FIWARE
reference architecture. You are here because you need to connect objects to gather data or interact with them, typical
IoT use case scenario . If so, you need to use one of the existing IoT Agents that are part of IDAS.

You need this component if you plan to connect IoT devices/gateways to FIWARE-based ecosystems. IoT Agents translate
IoT-specific protocols into the NGSI context information protocol, that is the FIWARE standard data exchange model. You
do not need this component if your devices or gateways natively support the NGSI API.

FIWARE-Ready IoT devices are able demonstrate the ability of the IoT solutions to seamless interoperate with FIWARE
platforms. Any IoT device which is able to connect to the context broker (either directly or via an IoT Agent) is able
to undergo a certification and testing process and can be added to the
[FIWARE marketplace](https://marketplace.fiware.org/) and labelled as a
[FIWARE-Ready IoT Device](http://marketplace.fiware.org/pages/how-to-devices).

### Why Use IoT Agents?

By using an IoT Agent , your devices will be represented in a FIWARE platform as NGSI entities in a Context Broker. This
means that you can query or subscribe to changes of device parameters status by querying or subscribing to the
corresponding NGSI entity attributes at the ContextBroker.

Additionally, you will be able trigger commands to your actuation devices by updating specific command-related
attributes in the associated NGSI entities representation at the Context Broker. This way, all hardware interactions
with IoT devices can be handled by the Context Broker, using a homogeneous
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface.

---

## IoT Agent Framework Library

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-node-lib.svg)
![](https://img.shields.io/github/release-date/telefonicaid/iotagent-node-lib.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/iotagent-node-lib/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/iotagent-node-lib) | :whale: Docker Hub : **None** | :books: [Documentation](https://iotagent-node-lib.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/telefonicaid/iotagent-node-lib/blob/master/docs/roadmap.md) |
| ----------------------------------------------------------------------------- | ----------------------------- | ---------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |

Library for developing your own IoT Agent.

The **IoT Agent Framework Library** project is part of [FIWARE](https://fiware.org/) and but is not rated as a
standalone component. It is used in the following IoT Agents:

## IoT Agent for JSON

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-json.svg)
![](https://img.shields.io/github/release-date/telefonicaid/iotagent-json.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/iotagent-json/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/iotagent-json) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/iotagent-json/) | :books: [Documentation](https://fiware-iotagent-json.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/telefonicaid/iotagent-json/blob/master/docs/roadmap.md) |
| ------------------------------------------------------------------------- | -------------------------------------------------------------------- | ------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |

IoT Agent for a JSON based protocol (with [AMQP](https://www.amqp.org/), [HTTP](https://www.w3.org/Protocols/) and
[MQTT](https://mqtt.org/) transports)

This IoT Agent is designed to be a bridge between [JSON](https://json.org/) and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## IoT Agent for Ultralight

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-ul.svg)
![](https://img.shields.io/github/release-date/telefonicaid/iotagent-ul.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/iotagent-ul/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/iotagent-ul) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/iotagent-ul/) | :books: [Documentation](https://fiware-iotagent-ul.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/telefonicaid/iotagent-ul/blob/master/docs/roadmap.md) |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------ | ----------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |

IoT Agent for the Ultralight 2.0 protocol (with [AMQP](https://www.amqp.org/), [HTTP](https://www.w3.org/Protocols/) and
[MQTT](https://mqtt.org/) transports)

This IoT Agent is designed to be a bridge between Ultralight and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## IoT Agent for LoRaWaN

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/Atos-Research-and-Innovation/IoTagent-LoRaWAN.svg)
![](https://img.shields.io/github/release-date/Atos-Research-and-Innovation/IoTagent-LoRaWAN.svg)
![](https://img.shields.io/github/commits-since/Atos-Research-and-Innovation/IoTagent-LoRaWAN/latest.svg)

| :octocat: [Git Repository](https://github.com/Atos-Research-and-Innovation/IoTagent-LoRaWAN) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/iotagent-lorawan/) | :books: [Documentation](https://fiware-lorawan.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/Atos-Research-and-Innovation/IoTagent-LoRaWAN/blob/master/docs/roadmap.md) |
| -------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |

IoT Agent for the LoRaWAN protocol (with CayenneLpp and CBOR data models)

This IoT Agent is designed to be a bridge between the [LoRaWAN](https://lora-alliance.org/about-lorawan) protocol and
the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## IoT Agent for LightWeight Machine2Machine

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/lightweightm2m-iotagent.svg)
![](https://img.shields.io/github/release-date/telefonicaid/lightweightm2m-iotagent.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/lightweightm2m-iotagent/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/lightweightm2m-iotagent) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/lightweightm2m-iotagent/) | :books: [Documentation](https://fiware-iotagent-lwm2m.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/telefonicaid/lightweightm2m-iotagent/blob/master/docs/roadmap.md) |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | -------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |

IoT Agent accepting COAP requests.

This IoT Agent is designed to be a bridge between the [OMA](https://www.omaspecworks.org/)
[Lightweight M2M](https://www.omaspecworks.org/what-is-oma-specworks/iot/lightweight-m2m-lwm2m/) protocol and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## IoT Agent for OPC UA

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/iotagent-opcua.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/iotagent-opcua.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/iotagent-opcua/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/iotagent-opcua) | :whale: [Docker Hub](https://hub.docker.com/r/beincpps/opcuaage) | :books: [Documentation](https://iotagent-opcua.rtfd.io) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/idas) | :dart: [Roadmap](https://github.com/Engineering-Research-and-Development/iotagent-opcua/blob/master/roadmap.md) |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |

IoT Agent accepting data from OPC UA devices.

This IoT Agent is designed to be a bridge between the [OPC Unified Architecture](http://www.opcua.us/) protocol and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## :seedling: IoT Agent for Sigfox (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/sigfox-iotagent.svg)
![](https://img.shields.io/github/release-date/telefonicaid/sigfox-iotagent.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/sigfox-iotagent/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/sigfox-iotagent) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/sigfox-iotagent) | :books: [Documentation](https://github.com/telefonicaid/sigfox-iotagent/tree/master/docs) | :mortar_board: Academy : **TBD** | :dart: [Roadmap](https://github.com/telefonicaid/sigfox-iotagent/blob/master/docs/roadmap.md) |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------------- | --------------------------------------------------------------------------------------------- |

IoT Agent for the Sigfox protocol.

This IoT Agent is designed to be a bridge between the [Sigfox](https://www.sigfox.com/en) protocol and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface. It follows the standard interaction model defined in the
[IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

## :new: IoT Agent for ADAPT/ISOXML (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/iotagent-isoxml.svg)
![](https://img.shields.io/github/release-date/FIWARE/iotagent-isoxml.svg)
![](https://img.shields.io/github/commits-since/FIWARE/iotagent-isoxml/latest.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/iotagent-isoxml) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/iotagent-isoxml) | :books: [Documentation](https://fiware-iotagent-isoxml.readthedocs.io/) | :mortar_board: Academy : **TBD** | :dart: [Roadmap](https://github.com/FIWARE/iotagent-isoxml/blob/master/docs/roadmap.md) |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | ----------------------------------------------------------------------- | -------------------------------- | --------------------------------------------------------------------------------------- |

IoT Agent for the ISOXML/ADAPT protocol.

An Internet of Things Agent for the ISO 11783 protocol (with [HTTP](https://www.w3.org/Protocols/)). This IoT Agent is
designed to be a bridge between ISOXML/ADAPT and the
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/FIWARE/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface of a context broker.

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

---

## :seedling: OpenVidu (Incubated)

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

## :seedling: Open MTC (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/iot-agents.svg)](./README.md)
![License](https://img.shields.io/github/license/OpenMTC/OpenMTC.svg)
![](https://img.shields.io/github/last-commit/OpenMTC/OpenMTC.svg)
![](https://img.shields.io/github/tag/OpenMTC/OpenMTC.svg)

| :octocat: [Git Repository](https://github.com/OpenMTC/OpenMTC) | :whale: [Docker Hub](https://hub.docker.com/u/openmtc) | :books: [Documentation](https://fiware-openmtc.readthedocs.io/) | :page_facing_up: [Site](https://www.openmtc.org/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/iot-agents/open-mtc) |
| -------------------------------------------------------------- | ------------------------------------------------------ | --------------------------------------------------------------- | ------------------------------------------------- | --------------------------------------------------------------------------------------------- |

A reference implementation of the [oneM2M](http://www.onem2m.org/) standard, for conducting applied research and
developing innovative M2M and IoT applications. It offers an
[NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json)
interface for connection to the Orion Context Broker
