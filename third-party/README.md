# Interface to Third Party Systems

Third-party system components are targeted to deal with transference of produced data for its further processing
externally.

## :seedling: Domibus (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/third-party.svg)](./README.md)
![License](https://img.shields.io/badge/license-EUPL--1.2-orange) ![](https://img.shields.io/badge/tag-5.0-blue.svg)

| :octocat: [Git Repository](https://ec.europa.eu/cefdigital/code/projects/EDELIVERY/repos/domibus) | :whale: [Docker Hub](https://hub.docker.com/r/fiware/domibus-tomcat/) | :books: [Documentation](https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/Domibus) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/third-party/domibus) | :dart: Roadmap : **TBD** |
| ------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | ------------------------ |


### What is Domibus?

Domibus is a sample implementation of a
[CEF eDelivery Access Point](https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/Access+Point+software). CEF
eDelivery helps users to exchange electronic data and documents with one another in a reliable and trusted way. The CEF
eDelivery solution is based on a distributed model called the “4-corner model”. In this model, the backend systems of
the users don’t exchange data directly with each other but do this through Access Points. These Access Points are
conformant to the same technical specifications and therefore capable of communicating with each other. As a result of
this, users adopting CEF eDelivery can easily and safely exchange data even if their IT systems were developed
independently from each other.

### Why use Domibus?

eDelivery helps to achieve the following goals: Interoperability: Implementing common technical specifications that
enable diverse organisations to exchange data and documents. Security: Promoting an atmosphere of trust among all
participants in the message exchange network. Scalability and Performance: Enabling the number of participants in the
data exchange network to grow as well as the number of exchanged messages. Legal Assurance and Accountability: Promoting
a high level of transparency and confidence among all participants in the message exchange network. Re-using CEF
eDelivery will accelerate the delivery time of a working document and data exchange network and reduces the cost and
risk of creating, maintaining and operating such a network. CEF eDelivery was already tried and tested in multiple
domains.

This project is part of [FIWARE](https://fiware.org/) and has been rated as follows:

-   **Version Tested:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.version&colorB=blue)
-   **Documentation:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.docCompleteness&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.docSoundness&colorB=blue)
-   **Responsiveness:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.timeToCharge&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.timeToFix&colorB=blue)
-   **FIWARE Testing:**
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.failureRate&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.scalability&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.performance&colorB=blue)
    ![](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/domibus.json&query=$.stability&colorB=blue)
    
    

## :seedling: Oliot (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/third-party.svg)](./README.md)
![License](https://img.shields.io/github/license/yalewkidane/FIWARE_EPCIS_Mediation_Gateway.svg)
![](https://img.shields.io/github/last-commit/yalewkidane/FIWARE_EPCIS_Mediation_Gateway.svg)
![](https://img.shields.io/github/tag/yalewkidane/FIWARE_EPCIS_Mediation_Gateway.svg)

| :octocat: [Git Repository](https://github.com/yalewkidane/FIWARE_EPCIS_Mediation_Gateway) |:books: [Documentation](https://fiware-epcis-gateway.readthedocs.io) | :dart: Roadmap : **TBD** |
| ----------------------------------------------------------------------------------------  | --------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
    
### What is Oliot?

Oliot-MG is a mediation gateway which translates information from NGSI based IoT platform to EPCIS based IoT platform. 
This enables capturing state change in FIWARE context broker in the form of EPCIS Events.

### Why use Oliot?

To solve the issue of interoperability, multiple companies, organizations, and consortia have started to join and create standards. Currently, the two of the major standards that are widely being considered in the IoT sector are EPCIS and NGSI. Nevertheless, the two standards differ both in data encoding and service interface which create fragmentation from the point of view of data consumers application. Moreover, the two platforms differ in the underlying philosophy of representing and storing IoT data; namely, NGSI is entity-based and EPCIS is event-based. This creates an overhead to analyze and process data coming from the two platforms.

FIWARE - EPCIS mediation gateway is developed to solve the interoperability between NGSI and EPCIS. It translates the entity based data from Orion context broker to EPCIS event. Moreover, enables traceability by capturing state change in FIWARE context broker in the form of EPCIS Event.


