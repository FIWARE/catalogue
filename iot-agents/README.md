# Interface to the Internet of Things

Connecting IoT devices or “things” involves the need to overcome a common set of problems arising in the different layers of the communication model. Using sensor data or acting upon them requires interaction with a heterogeneous environment of devices running different protocols (due to the lack of globally accepted standards), dispersed and accessible through multiple wireless technologies.

To learn more about the Interface to the Internet of Things, check out the [documentation](https://fiwaretourguide.readthedocs.io/en/latest/connection-to-the-internet-of-things/introduction/)

### What are IoT Agents?

The IoT Agent (IDAS) component is an implementation of the Backend Device Management GE, according to the FIWARE reference architecture. You are here because you need to connect objects to gather data or interact with them, typical IoT use case scenario . If so, you need to use one of the existing IoT Agents that are part of IDAS.

You need this component if you plan to connect IoT devices/gateways to FIWARE-based ecosystems. IoT Agents translate IoT-specific protocols into the NGSI context information protocol, that is the FIWARE standard data exchange model. You do not need this component if your devices or gateways natively support the NGSI API.

FIWARE-Ready IoT devices are able demonstrate the ability of the IoT solutions
to seamless interoperate with FIWARE platforms. Any IoT device which is able to connect to the context broker (either directly or via an IoT Agent) is able to undergo a certification and testing process and can be added to the [FIWARE marketplace](https://marketplace.fiware.org/) and labelled as a [FIWARE-Ready IoT Device](http://marketplace.fiware.org/pages/how-to-devices). 

### Why Use IoT Agents?

By using an IoT Agent , your devices will be represented in a FIWARE platform
as NGSI entities in a Context Broker. This means that you can query or
subscribe to changes of device parameters status by querying or subscribing to the corresponding NGSI entity attributes at the ContextBroker.

Additionally, you will be able trigger commands to your actuation devices by updating specific command-related attributes in the associated NGSI entities representation at the Context Broker. This way, all hardware interactions with IoT devices can be handled by the Context Broker, using a homogeneous [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface.


---

## IoT Agent Framework Library

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-node-lib.svg)

* [Git Repository](https://github.com/telefonicaid/iotagent-node-lib)
*  Docker Hub : **None**
* [Documentation](https://iotagent-node-lib.rtfd.io)

Library for developing your own IoT Agent.

The **IoT Agent Framework Library** project is part of [FIWARE](http://fiware.org/) and but is not rated as a standalone component. It is used in the following IoT Agents:

## IoT Agent for JSON

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-json.svg)

* [Git Repository](https://github.com/telefonicaid/iotagent-json)
* [Docker Hub](https://hub.docker.com/r/fiware/iotagent-json/)
* [Documentation](https://fiware-iotagent-json.rtfd.io)

IoT Agent for a JSON based protocol (with [AMQP](https://www.amqp.org/), [HTTP](https://www.w3.org/Protocols/) and [MQTT](https://mqtt.org/) transports)

This IoT Agent is designed to be a bridge between [JSON](https://json.org/) and the [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface. It follows the standard interaction model defined in the [IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

###  Quality Assurance

The **IoT Agent for JSON** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/catalogue/json/iotagent_json.json&query=$.stability&colorB=blue)


## IoT Agent for Ultralight

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/telefonicaid/iotagent-ul.svg)

* [Git Repository](https://github.com/telefonicaid/iotagent-ul)
* [Docker Hub](https://hub.docker.com/r/fiware/iotagent-ul/)
* [Documentation](https://fiware-iotagent-ul.rtfd.io)

IoT Agent for the Ultralight 2.0 protocol (with [AMQP](https://www.amqp.org/), [HTTP](https://www.w3.org/Protocols/) and [MQTT](https://mqtt.org/) transports)

This IoT Agent is designed to be a bridge between Ultralight and the [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface. It follows the standard interaction model defined in the [IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

###  Quality Assurance

The **IoT Agent for the Ultralight** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/catalogue/json/iotagent_ul.json&query=$.stability&colorB=blue)

## IoT Agent for LoRaWaN

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/Atos-Research-and-Innovation/IoTagent-LoRaWAN.svg)

* [Git Repository](https://github.com/Atos-Research-and-Innovation/IoTagent-LoRaWAN)
* [Docker Hub](https://hub.docker.com/r/ioeari/iotagent-lora/)
* [Documentation](https://fiware-lorawan.rtfd.io)

IoT Agent for the LoRaWAN protocol (with CayenneLpp and CBOR data models)

This IoT Agent is designed to be a bridge between the [LoRaWAN](https://lora-alliance.org/about-lorawan) protocol and the [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface. It follows the standard interaction model defined in the [IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

###  Quality Assurance

The **IoT Agent for LoRaWAN** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/catalogue/json/iotagent_LoRa.json&query=$.stability&colorB=blue)

## IoT Agent for LightWeight Machine2Machine

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/telefonicaid/lightweightm2m-iotagent.svg)

* [Git Repository](https://github.com/telefonicaid/lightweightm2m-iotagent)
* [Docker Hub](https://hub.docker.com/r/fiware/lightweightm2m-iotagent/)
* [Documentation](https://fiware-iotagent-lwm2m.rtfd.io)

IoT Agent accepting COAP requests.

This IoT Agent is designed to be a bridge between the [OMA](https://www.omaspecworks.org/)
[Lightweight M2M](https://www.omaspecworks.org/what-is-oma-specworks/iot/lightweight-m2m-lwm2m/)
and protocol and the [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface. It follows the standard interaction model defined in the [IoT Agent Framework Library](https://iotagent-node-lib.rtfd.io).

###  Quality Assurance

The **IoT Agent for LightWeight Machine2Machine** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/catalogue/json/iotagent_LWM2M.json&query=$.stability&colorB=blue)

---

## Open MTC (Incubated)

[![](https://img.shields.io/badge/FIWARE-IoT_Agents-45d3dd.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAVCAYAAAC33pUlAAAABHNCSVQICAgIfAhkiAAAA8NJREFUSEuVlUtIFlEUx+eO+j3Uz8wSLLJ3pBiBUljRu1WLCAKXbXpQEUFERSQF0aKVFAUVrSJalNXGgmphFEhQiZEIPQwKLbEUK7VvZrRvbr8zzjfNl4/swplz7rn/8z/33HtmRhn/MWzbXmloHVeG0a+VSmAXorXS+oehVD9+0zDN9mgk8n0sWtYnHo5tT9daH4BsM+THQC8naK02jCZ83/HlKaVSzBey1sm8BP9nnUpdjOfl/Qyzj5ust6cnO5FItJLoJqB6yJ4QuNcjVOohegpihshS4F6S7DTVVlNtFFxzNBa7kcaEwUGcbVnH8xOJD67WG9n1NILuKtOsQG9FngOc+lciic1iQ8uQGhJ1kVAKKXUs60RoQ5km93IfaREvuoFj7PZsy9rGXE9G/NhBsDOJ63Acp1J82eFU7OIVO1OxWGwpSU5hb0GqfMydMHYSdiMVnncNY5Vy3VbwRUEydvEaRxmAOSSqJMlJISTxS9YWTYLcg3B253xsPkc5lXk3XLlwrPLuDPKDqDIutzYaj3eweMkPeCCahO3+fEIF8SfLtg/5oI3Mh0ylKM4YRBaYzuBgPuRnBYD3mmhA1X5Aka8NKl4nNz7BaKTzSgsLCzWbvyo4eK9r15WwLKRAmmCXXDoA1kaG2F4jWFbgkxUnlcrB/xj5iHxFPiBN4JekY4nZ6ccOiQ87hgwhe+TOdogT1nfpgEDTvYAucIwHxBfNyhpGrR+F8x00WD33VCNTOr/Wd+9C51Ben7S0ZJUq3qZJ2OkZz+cL87ZfWuePlwRcHZjeUMxFwTrJZAJfSvyWZc1VgORTY8rBcubetdiOk+CO+jPOcCRTF+oZ0okUIyuQeSNL/lPrulg8flhmJHmE2gBpE9xrJNkwpN4rQIIyujGoELCQz8ggG38iGzjKkXufJ2Klun1iu65bnJub2yut3xbEK3UvsDEInCmvA6YjMeE1bCn8F9JBe1eAnS2JksmkIlEDfi8R46kkEkMWdqOv+AvS9rcp2bvk8OAESvgox7h4aWNMLd32jSMLvuwDAwORSE7Oe3ZRKrFwvYGrPOBJ2nZ20Op/mqKNzgraOTPt6Bnx5citUINIczX/jUw3xGL2+ia8KAvsvp0ePoL5hXkXO5YvQYSFAiqcJX8E/gyX8QUvv8eh9XUq3h7mE9tLJoNKqnhHXmCO+dtJ4ybSkH1jc9XRaHTMz1tATBe2UEkeAdKu/zWIkUbZxD+veLxEQhhUFmbnvOezsJrk+zmqMo6vIL2OXzPvQ8v7dgtpoQnkF/LP8Ruu9zXdJHg4igAAAABJRU5ErkJgggA=)](https://www.fiware.org/developers/catalogue/)
![License](https://img.shields.io/github/license/OpenMTC/OpenMTC.svg)

* [Git Repository](https://github.com/OpenMTC/OpenMTC)
* Docker Hub : TBD
* [Documentation](http://www.openmtc.org/doc.html)
* [Website](https://www.openmtc.org/)

A reference implementation of the [oneM2M](http://www.onem2m.org/) standard, for conducting applied research and developing innovative M2M and IoT applications. It offers an [NGSI](https://swagger.lab.fiware.org/?url=https://raw.githubusercontent.com/Fiware/specifications/master/OpenAPI/ngsiv2/ngsiv2-openapi.json) interface for connection to the Orion Context Broker

###  Quality Assurance

The **Open MTC** project is part of [FIWARE](http://fiware.org/) and has been rated as follows:

* **Version Tested:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.version&colorB=blue)
* **Documentation:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.docCompleteness&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.docSoundness&colorB=blue)
* **Responsiveness:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.timeToCharge&colorB=blue) ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.timeToFix&colorB=blue)
* **FIWARE Testing:** ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.failureRate&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.scalability&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.performance&colorB=blue)
![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://jason-fox.github.io/catalogue/json/open_mtc.json&query=$.stability&colorB=blue)
