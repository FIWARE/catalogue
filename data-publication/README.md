# Data Publication and Monetization

Publishing and consuming open data is a cornerstone for the development of applications and the creation of an innovation ecosystem. In this regard, this section explains how users (both end users and developers) can expose their data publishing it in CKAN, the Open Data publication GE.

To learn more about Data Publication, check out the [documentation](https://fiwaretourguide.readthedocs.io/en/latest/publishing-open-data-in-fiware/introduction/)

## Extensions to CKAN

[![](https://img.shields.io/badge/FIWARE-Data_Publication-51b6a3.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)

* [Git Repository](https://github.com/conwetlab/FIWARE-CKAN-Extensions)
* [Docker Hub](https://hub.docker.com/r/fiware/ckan-extended/)
* [Documentation](https://fiware-ckan-extensions.rtfd.io/)

### What is Extensions to CKAN?

A set of CKAN extensions, developed within FIWARE, which integrates this data portal platform with the main FIWARE GEs, enhancing the default CKAN behaviour with improved access control, publication of right-time context data, and rich visualization features.

In particular, the following extensions are being provided:

* OAuth2: This extension enables the integration of CKAN with an external OAuth2 Identity Manager (e.g The FIWARE IdM)
* Private Datasets: This extension improves the default dataset permissions features provided by CKAN by enabling to create protected datasets which can be accessed by a set of users included in an access list
* NGSI View: This extension enables the publication of right-time context data as dataset resources by allowing to define them as NGSI v2 queries to a Context Broker
* BAE Publisher: This extension simplifies the monetization of private datasets by enabling the creation of products and offerings in the Business API Ecosystem GE directly using the dataset information
* WireCloud View: This extension allows to embed WireCloud (Application Mashup GEri) dashboards as dataset resources views, enabling the creation of rich and highly customizable visualizations for the published data
* Data Requests: This extension includes a new section in CKAN intended to allow users of the platform to ask for data which is not yet published


### Why use Extensions to CKAN?
CKAN is one of the most extended Open Data publication platforms and is becoming the de-fact standard for data publication in Europe. Moreover, CKAN is an open source platform which means it can be easily adapted and expanded.

In this regard, the provided extensions integrate CKAN with the FIWARE platform, enabling the right-time context information served by a context broker to be published as dataset resources, making it easier to be discovered and consumed.

In addition, the integration of the FIWARE Security and Business Frameworks provide an enriched access control and enable explicit acceptance of data terms and conditions, usage accounting, or data monetization

Finally, the integration with WireCloud let the data providers to create and customize rich visualizations for their data, without the need of installing new extensions of restarting the platform.


This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/ckan.json&query=$.stability&colorB=blue)

## Business API Ecosystem

[![](https://img.shields.io/badge/FIWARE-Data_Monetization-51b6a3.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)

* [Git Repository](https://github.com/FIWARE-TMForum/Business-API-Ecosystem)
* [Docker Hub](https://hub.docker.com/r/fiware/business-api-ecosystem)
* [Documentation](https://business-api-ecosystem.rtfd.io/)

### What is the Business API Ecosystem?

The Business API Ecosystem GE is the result of the collaboration between FIWARE and the TMForum. In this regard, the Business API Ecosystem GE is a joint component made up by integrating the FIWARE Business Framework with a set of standard APIs (and its reference implementations) provided by the TMForum in its TMF API ecosystem.

This component allows the monetization of different kind of assets (both digital and physical) during the whole service life cycle, from offering creation to its charging, accounting and revenue settlement and sharing. In this way, the Business API Ecosystem provides sellers the means for managing, publishing, and generating revenue of they products, apps, data, and services.

By using the Business API Ecosystem you have access to the following key features:

* Support for the management of catalogs, products, and offering
* Support for rich pricing models, including recurring payments, pay-per-use, etc.
* Support for accounting callbacks
* Support for billing and charging
* Integrated support for PayPal, including customer charges and seller payments
* Support for revenue sharing, including models with multiple stakeholders involved

The Business API Ecosystem exposes its complete functionality through TMForum standard APIs; concretely, it includes the catalog management, ordering management, inventory management, usage management, billing, customer, and party APIs.

### Why use the Business API Ecosystem?

In those fields where it is expected to create a real ecosystem of apps, data, and services (such as Smart Cities), offering third parties a way to enrich existing services and data, and enable monetization, is a key factor. In this regard, the integrated support for pricing (including pay-per-use modalities), accounting, charging, billing and revenue sharing offered by the Business API Ecosystem can position it one step ahead of the current market.

Additionally, the TMForum APIs are design to enable repeatable and flexible integration among operations and management systems, making it easier to create, build and operate complex innovative services. The Business API Ecosystem exposes its functionality using the standard TMForum APIs; therefore, it takes advantage of the benefits on operation and management offered by such standards, allowing companies that plan to offer data and apps in such ecosystem to not adapt their systems ad-hoc.

Business API Ecosystem Open [Specification](https://forge.fiware.org/plugins/mediawiki/wiki/fiware/index.php/FIWARE.OpenSpecification.Apps.BusinessAPIEcosystem)

Biz Ecosystem RI is an implementation of the FIWARE/TMForum Business API Ecosystem Generic Enabler. More specifically, the Biz Ecosystem RI implements the following APIs and Open Specifications:

* [Open API Specification](https://fiware-tmforum.github.io/Business-API-Ecosystem/)

This project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/biz_framework.json&query=$.stability&colorB=blue)