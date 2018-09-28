# Interface to the Internet of Things

Connecting “objects” or “things” involves the need to overcome a set of problems arising in the different layers of the communication model. Using its data or acting upon them requires interaction with a heterogeneous environment of devices running different protocols (due to the lack of globally accepted standards), dispersed and accessible through multiple wireless technologies.

To learn more about the Interface to the Internet of Things, check out the [documentation](https://fiwaretourguide.readthedocs.io/en/latest/connection-to-the-internet-of-things/introduction/)

## What are IoT Agents?

The IoT Agent (IDAS) component is an implementation of the Backend Device Management GE, according to the FIWARE reference architecture. You are here because you need to connect objects to gather data or interact with them, typical IoT use case scenario . If so, you need to use one of the existing IoT Agents that are part of IDAS.

You need this component if you plan to connect IoT devices/gateways to FIWARE-based ecosystems. IoT Agents translate IoT-specific protocols into the NGSI context information protocol, that is the FIWARE standard data exchange model. You do not need this component if your devices or gateways natively support the NGSI API.

## Why Use IoT Agents?

By using an IoT Agent , your devices will be represented in a FIWARE platform as NGSI entities in a ContextBroker. This means that you can query or subscribe to changes of device parameters status by querying or subscribing to the corresponding NGSI entity attributes at the ContextBroker.

Additionally, you may trigger commands to your actuation devices just by updating specific command-related attributes in their NGSI entities representation at the Contaxt Broker. This way, all developers interactions with devices are handled at a ContextBroker, providing an homogeneous API and interface as for all other non-IoT data in a FIWARE ecosystem.


---

## IoT Agent Framework

Library for developing your own IoT Agent.

* [Git Repository](https://github.com/telefonicaid/iotagent-node-lib)
*  Docker Hub : **None**
* [Documentation](https://iotagent-node-lib.rtfd.io)



## IoT Agent for JSON

IoT Agent for a JSON based protocol (with HTTP and MQTT transport)

* [Git Repository](https://github.com/telefonicaid/iotagent-json)
* [Docker Hub](https://hub.docker.com/r/fiware/iotagent-json/)
* [Documentation](https://fiware-iotagent-json.rtfd.io)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_json.json&query=$.stability&colorB=blue)


## IoT Agent for Ultralight

IoT Agent for the Ultralight 2.0 protocol (with HTTP and MQTT transport)

* [Git Repository](https://github.com/telefonicaid/iotagent-ul)
* [Docker Hub](https://hub.docker.com/r/fiware/iotagent-ul/)
* [Documentation](https://fiware-iotagent-ul.rtfd.io)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_ul.json&query=$.stability&colorB=blue)

## IoT Agent for LoRaWaN

IoT Agent for LoRaWAN protocol (with CayenneLpp and CBOR data models)

* [Git Repository](https://github.com/Atos-Research-and-Innovation/IoTagent-LoRaWAN)
* [Docker Hub](https://hub.docker.com/r/ioeari/iotagent-lora/)
* [Documentation](https://fiware-lorawan.rtfd.io)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LoRa.json&query=$.stability&colorB=blue)

## IoT Agent for LightWeight Machine2Machine

IoT Agent accepting COAP requests

* [Git Repository](https://github.com/telefonicaid/lightweightm2m-iotagent)
* [Docker Hub](https://hub.docker.com/r/fiware/lightweightm2m-iotagent/)
* [Documentation](https://fiware-iotagent-lwm2m.rtfd.io)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/iotagent_LWM2M.json&query=$.stability&colorB=blue)

## Open MTC

A reference implementation of the oneM2M standard, for conducting applied research and developing innovative M2M and IoT applications.

* [Git Repository](https://github.com/OpenMTC/OpenMTC)
* Docker Hub : TBD
* [Documentation](http://www.openmtc.org/doc.html)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/Generic-Enablers/json/open_mtc.json&query=$.stability&colorB=blue)
