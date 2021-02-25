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

### Quality Assurance

The **IoT Agent for JSON** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/iotagent_json.json&query=$.stability&colorB=blue)

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

### Quality Assurance

The **IoT Agent for the Ultralight** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/iotagent_ul.json&query=$.stability&colorB=blue)

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

### Quality Assurance

The **IoT Agent for LoRaWAN** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/iotagent_LoRa.json&query=$.stability&colorB=blue)

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

### Quality Assurance

The **IoT Agent for LightWeight Machine2Machine** project is part of [FIWARE](https://fiware.org/) and has been rated as
follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/iotagent_LWM2M.json&query=$.stability&colorB=blue)

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

### Quality Assurance

The **IoT Agent for OPC-UA** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/iotagent_OPC-UA.json&query=$.stability&colorB=blue)

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

### Quality Assurance

The **IoT Agent for Sigfox** project is a new component within [FIWARE](https://fiware.org/) and will be rated in the
current release

---

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

### Quality Assurance

The **Open MTC** project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/open_mtc.json&query=$.stability&colorB=blue)
