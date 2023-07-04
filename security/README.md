# Security, Authorization and API Access Control

In FIWARE we offer some services and tools to allow you to manage authentication and authorization in your applications
and backend services. If you want to manage identity in your application without developing your own mechanisms, you can
offer your users the possibility to log in to your app using their own FIWARE Accounts.

This is possible thanks to the OAuth2 protocol and Identity Management components such as Keyrock or Keycloak. In the
same way that you usually log in to some services using your Twitter or Facebook account, your users will use their
FIWARE accounts to access your service. But this is only the first step, because you can also secure your backends using
FIWARE Account. If your service or GE has a REST API that can be accessed from Internet, probably you want to manage the
access to the resources. For instance, you can allow the access only to the users that have a FIWARE account.

To learn more about Security, Authorization and API Access Control, check out the
[documentation](https://fiwaretourguide.readthedocs.io/en/latest/security/introduction/)

## Keyrock Identity Manager

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-idm.svg)
![](https://img.shields.io/github/release-date/ging/fiware-idm.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-idm/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-idm) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/idm) | :books: [Documentation](https://fiware-idm.readthedocs.io/en/latest/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/security/keyrock) | :dart: [Roadmap](https://github.com/ging/fiware-idm/blob/master/roadmap.md) |
| -------------------------------------------------------------- | ---------------------------------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------- |


### What is Keyrock?

Identity Management covers a number of aspects involving users' access to networks, services and applications, including
secure and private authentication from users to devices, networks and services, authorization & trust management, user
profile management, privacy-preserving disposition of personal data, Single Sign-On (SSO) to service domains and
Identity Federation towards applications. The Identity Manager is the central component that provides a bridge between
IdM systems at connectivity-level and application-level. Furthermore, Identity Management is used for authorising
foreign services to access personal data stored in a secure environment. Hereby usually the owner of the data must give
consent to access the data; the consent-giving procedure also implies certain user authentication.

### Why use Keyrock?

Identity Management is key on any architecture. IdM offers tools for administrators to support the handling of user
lifecycle functions. It reduces the effort for account creation and management, as it supports the enforcement of
policies and procedures for user registration, user profile management and the modification of user accounts.
Administrators can quickly configure customized pages for the inclusion of different authentication providers,
registration of tenant applications with access to user profile data and the handling of error notifications.

For end users, the IdM provides a convenient solution for registering with applications since it gives them a means to
re-use attributes like address, email or others, thus allowing an easy and convenient management of profile information.
Users and administrators can rely on standardized solutions to allow user self-service features. In addition to
providing a native login, IdM supports the integration of multiple 3rd party authentication providers. Foremost, it
supports in a first step the configuration of preferred identity providers through the administrators. The use of 3rd
party IdMs lowers the entry barriers for a native user to register, since the user can link to her/his preferred IdM and
use this account for authentication. As it is possible to configure several applications that shall be linked to his
IdM, the main benefit for users is a single sign-on (SSO) to all these applications. The IdM offers hosted user profile
storage with specific user profile attributes. Applications do not have to run and manage their own persistent user data
storages, but instead, can use the IdM user profile storage as a Software as a Service (SaaS) offering.

The KeyRock Identity Management GEI complies with existing standards for user authentication and it provides access
information to services acting as a Single Sign-On platform. The KeyRock IdM is a free/open source software which code
can be found at Github: KeyRock source code It can be integrated with any development, specially with any Cloud service.
The installation guide can be found at the Github's wiki page: KeyRock installation guide and KeyRock User and
Programmers guide

## Wilma PEP Proxy

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/ging/fiware-pep-proxy.svg)
![](https://img.shields.io/github/release-date/ging/fiware-pep-proxy.svg)
![](https://img.shields.io/github/commits-since/ging/fiware-pep-proxy/latest.svg)

| :octocat: [Git Repository](https://github.com/ging/fiware-pep-proxy) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/pep-proxy) | :books: [Documentation](https://fiware-pep-proxy.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/security/wilma) | :dart: [Roadmap](https://github.com/ging/fiware-pep-proxy/blob/master/roadmap.md) |
| -------------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |


### What is Wilma?

You get the reference implementation of PEP Proxy Generic Enabler. Thanks to this component and together with Identity
Management and Authorization PDP GEs, you will add authentication and authorization security to your backend
applications. Thus, only FIWARE users will be able to access your GEs or REST services. But you will be able also to
manage specific permissions and policies to your resources allowing different access levels to your users.

### Why use Wilma?

Wilma is the reference implementation of this Generic Enabler because it is completely integrated with the FIWARE
ecosystem and specifically with FIWARE account. It is thought to work with OAuth2 and XACML protocols, the standards for
authentication and authorization chosen in FIWARE. Furthermore, this is the component that every GEis are including on
top of their REST APIs so it is tested and used in many different scenarios.

## Authzforce PDP

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/authzforce/server.svg)
![](https://img.shields.io/github/release-date/authzforce/server.svg)
![](https://img.shields.io/github/commits-since/authzforce/server/latest.svg)

| :octocat: [Git Repository](https://github.com/authzforce/server) | :whale: [Docker Hub](https://hub.docker.com/r/authzforce/server/) | :books: [Documentation](https://authzforce-ce-fiware.rtfd.io/) | :mortar_board: [Academy](https://fiware-academy.readthedocs.io/en/latest/security/authzforce) | :dart: [Roadmap](https://github.com/authzforce/server/blob/develop/ROADMAP.md) |
| ---------------------------------------------------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |


### What is Authzforce?

You get the reference implementation of the Authorization PDP Generic Enabler (formerly called Access Control GE).
Indeed, as mandated by the GE specification, this implementation provides an API to get authorization decisions based on
authorization policies, and authorization requests from PEPs. The API follows the REST architecture style, and complies
with XACML v3.0. XACML (eXtensible Access Control Markup Language) is a OASIS standard for authorization policy format
and evaluation logic, as well as for the authorization decision request/response format. The PDP (Policy Decision Point)
and the PEP (Policy Enforcement Point) terms are defined in the XACML standard. This GEri plays the role of a PDP.

To fulfill the XACML architecture, you may need a PEP (Policy Enforcement Point) to protect your application, which is
not provided here. For REST APIs, we recommend you use the PEP Proxy by UPM available in the catalogue.

### Why use Authzforce?

Providing authorization for your application is a must for security reasons. However, it is always a complex part to
implement, especially for non-security developers, because it involves advanced security concepts (Identity-based, RBAC,
ABAC, etc.). Most developers embed the authorization logic within the application code, which makes it hard to maintain,
evolve and integrate with external services providing extra authorization attributes. In this regard, the Authorization
PDP helps you externalize the authorization logic and take advantage of flexible and standard-compliant Attribute-Based
Access Control features. Combined with the Identity Management GE and the PEP proxy, this gives you a comprehensive
access control solution for your application.

The Authorization PDP specification defines a RESTful API of an Authorization Policy Decision Point (PDP) compliant with
the OASIS XACML standard. More specifically, it defines RESTful interfaces for: Managing XACML-compliant authorization
policies; Requesting authorization decisions based on those policies, in a XACML-compliant request-response format.

<a name="fiware-true-connector"/>

## :seedling: FIWARE TRUE Connector (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/Engineering-Research-and-Development/fiware-true-connector.svg)
![](https://img.shields.io/github/release-date/Engineering-Research-and-Development/fiware-true-connector.svg)
![](https://img.shields.io/github/commits-since/Engineering-Research-and-Development/fiware-true-connector/latest.svg)

| :octocat: [Git Repository](https://github.com/Engineering-Research-and-Development/fiware-true-connector) | :whale: [Docker Hub](https://github.com/Engineering-Research-and-Development/fiware-true-connector/blob/master/docs/docker_readme.md) | :books: [Documentation](https://fiware-true-connector.readthedocs.io/) |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |


### What is the FIWARE TRUE Connector?

FIWARE TRUE Connector is a connector for the [International Data Spaces](https://internationaldataspaces.org/) (IDS)
ecosystem. FIWARE TRUE Connector enables trusted data exchange in order to be active part of an IDS Ecosystem, a virtual
data space leveraging existing standards and technologies, as well as governance models well-accepted in the data
economy, to facilitate secure and standardized data exchange and data linkage in a trusted business ecosystem. The
connector is compliant with the latest IDS specifications and can be easily customized to fit a wide spread of scenarios
thanks to the internal separation of Execution Core Container and Data App.

It is integrable with a lot of existing IDS services and totally configurable in terms of internal/external data format
(multipart/mixed, multipart/form, http-header) and protocols (HTTP, HTTPS, Web Socket over HTTPS, IDSCPv2).

### Why use the FIWARE TRUE Connector?

Trusted data exchange underpins data sovereignty, and allows users to pass context data between systems whilst limiting
the degree to which third-parties are able to use and receive the data.

IDSA envisages trusted data exchange taking place through federated entities, that are globally compliant with the
certification requirements defined by IDSA itself. The use of the connector allows data providers and consumers to join
these federated networks, or data spaces.

<a name="steeskin-pep"/>

## :seedling: Steelskin PEP Proxy (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-pep-steelskin.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-pep-steelskin.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-pep-steelskin/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-pep-steelskin) | :whale: [Docker Hub](https://hub.docker.com/r/telefonicaiot/fiware-pep-steelskin) | :books: [Documentation](https://github.com/telefonicaid/fiware-pep-steelskin#README.md) |
| -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |


### What is Steelskin PEP?

Steelskin is a proxy meant to secure independent microservices such as FIWARE components, by intercepting every request
sent to the componen and validating it against an Access Control component. This validation is based in several pieces
of data:

-   `User token`: comes from the OAuth authorization server and is taken from the x-auth-token header.
-   `ServiceId`: is read from the fiware-service header and identifies the protected component.
-   `SubserviceId`: is read from the fiware-servicepath header and identifies further divisions of the service.
-   `Action`: the PEP guess the action for a particular request by checking the path or inspecting the body. The logic
    for performing such actions depends on the component that is being secured, so the PEP will need a plugin for each
    of this components.

### Why use Steelskin PEP?

A PEP Proxy lies in front of a secured resource and is an endpoint found at "well-known" public location. It serves as a
gatekeeper for resource access. Users or other actors must supply sufficient information to the PEP Proxy to allow their
request to succeed and pass through the PEP proxy. The PEP proxy then passes the request on to the real location of the
secured resource itself.

<a name="keypass"/>
    
## :seedling: Keypass (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-keypass.svg)
![](https://img.shields.io/github/release-date/telefonicaid/fiware-keypass.svg)
![](https://img.shields.io/github/commits-since/telefonicaid/fiware-keypass/latest.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-keypass) | :whale: [Docker Hub](https://hub.docker.com/r/telefonicaiot/fiware-keypass) | :books: [Documentation](telefonicaid/fiware-keypass#readme.md) |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------- |


### What is Keypass?

Keypass is multi-tenant XACML server with PAP (Policy Administration Point) and PDP (Policy Decision Point)
capabilities.

### Why use Keypass?

The PDP is an adjudicator which checks whether the headers and other information found within the request permit the
user access to a resource or resources. XACML is a common standard for defining the rules of access and allowing
modification on the fly. The PAP allows users to set up roles, permissions etc. which underpin the ruleset of the PDP
creating a flexible security framework which can be applied to any microservice.

<a name="keystone-scim"/>

## :seedling: Keystone SCIM (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-keystone-scim.svg)
![](https://img.shields.io/github/last-commit/telefonicaid/fiware-keystone-scim)
![](https://img.shields.io/github/tag/telefonicaid/fiware-keystone-scim.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-keystone-scim) | :books: [Documentation](https://github.com/telefonicaid/fiware-keystone-scim/README.md) |
| -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |


### What is Keystone SCIM?

Keystone SCIM is an OpenStack Keystone extension that enables the management of User, Groups and Roles using SCIM v1.1
standard. As any Keystone extension, it's designed to be installed on top of an existing Keystone installation,
following Keystone recommendations for extensions.

### Why use Keystone SCIM?

The SCIM standard is a standard for automating the exchange of user identity information between identity domains, or IT
systems. The extension enables the usage of this standard to define users, goups and roles. It can be installed onto a
running Keystone installation and enhance the functionality of it.

<a name="keystone-spassword"/>
    
## :seedling: Keystone SPASSWORD (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/telefonicaid/fiware-keystone-spassword.svg)
![](https://img.shields.io/github/last-commit/telefonicaid/fiware-keystone-spassword)
![](https://img.shields.io/github/tag/telefonicaid/fiware-keystone-spassword.svg)

| :octocat: [Git Repository](https://github.com/telefonicaid/fiware-keystone-spassword) | :whale: [Docker Hub](https://hub.docker.com/r/telefonicaiot/fiware-keystone-spassword) | :books: [Documentation](https://github.com/telefonicaid/fiware-keystone-spassword/README.md) |
| ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |


### What is Keystone SPASSWORD?

Keystone SPASSWORD is an OpenStack Keystone extension that enables some extra security checks over user passwords, such
as ensuring the usage of strong passwords, expiration time for a password, number of bad login attempts before user
account became temporarily blocked, a recover procedure password, a second factor authentication (2FA) and so on.

### Why use Keystone SPASSWORD?

Additional security checks and features improve the security and usability of a system, SPASSWORD helps to reduce
development time by avoiding the need to implement and test bespoke secure system functions.

<a name="trusted-issuers-list-service"/>

## :seedling: Trusted Issuers List Service  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/trusted-issuers-list.svg)
![](https://img.shields.io/github/last-commit/FIWARE/trusted-issuers-list)
![](https://img.shields.io/github/tag/FIWARE/trusted-issuers-list.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/trusted-issuers-list) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/trusted-issuers-registry) | :books: [Documentation](https://github.com/FIWARE/trusted-issuers-list/blob/main/README.md) | 
| --- | --- | --- |

### What is the Trusted Issuers List Service  ?

The Trusted-Issuers-List Service provides an EBSI Trusted Issuers Registry implementation to act as the Trusted-List-Service in the DSBA Trust and IAM Framework. In addition, a Trusted Issuers List API to manage the issuers is provided.   

### Why used the Trusted Issuers List Service ?

In an DSBA-compliant framework, the Verifier has to check for incoming [Verifiable Credentials](https://www.w3.org/TR/vc-data-model/) that the corresponding issuer is allowed to issue:

-   the given type of credential
-   with the given claims
-   and at the current time

To do so, it requires a service that provides this information

<a name="dbsa-pdp"/>

## :seedling: DSBA PDP  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/dsba-pdp.svg)
![](https://img.shields.io/github/last-commit/FIWARE/dsba-pdp)
![](https://img.shields.io/github/tag/FIWARE/dsba-pdp.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/dsba-pdp) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/dsba-pdp) | :books: [Documentation](https://github.com/FIWARE/dsba-pdp/blob/main/README.md) | 
| --- | --- | --- |

### What is the DSBA PDP  ?

Implementation of a Policy-Desicion Point, evaluating Json-Web-Tokens containing [Verifiable Credentials](https://www.w3.org/TR/vc-data-model/) s in an DSBA-compliant way. It also supports the evaluation in the context of i4Trust. 

### Why use the DSBA PDP ?

A Policy Decision Point (PDP) is a mechanism that restricts access to resources by comparing them to a security policy. The
permit/deny mechanism ensure than only authorised users are able to access a given resource. This PDP for data spaces uses 
well-defined policy structures found within JWTs, where the policy structure follows the reccommendations made by the Data 
Spaces Business Alliance ((DSBA)[https://data-spaces-business-alliance.eu/]) and therefore ensuring that multiple organisations
are able to create policies in common across a data space.

<a name="vc-verifier"/>

## :seedling: VC-Verifier  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/VCVerifier.svg)
![](https://img.shields.io/github/last-commit/FIWARE/VCVerifier)
![](https://img.shields.io/github/tag/FIWARE/VCVerifier.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/VCVerifier) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/vcverifier) | :books: [Documentation](https://github.com/FIWARE/VCVerifier/blob/main/README.md) | 
| --- | --- | --- |

### What is VCVerifier ?

VCVerifier provides the necessary endpoints(see API) to offer SIOP-2/OIDC4VP compliant authentication flows. 
It exchanges [Verifiable Credentials](https://www.w3.org/TR/vc-data-model/) for a JSON Web Token ([JWT](https://jwt.io/)), 
that can be used for authorization and authentication in down-stream components.

### Why use VCVerifier ?

The JWT used for a Verifiable Credential is not the same JWT that can be used for authorization and authentication.
The component reads in a Verifiable Credential and replaces it with an authorisation policy which can be used to permit 
access to services.

<a name="keycloak-vc-issuer"/>

## :seedling: Keycloak VC-Issuer  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/keycloak-vc-issuer.svg)
![](https://img.shields.io/github/last-commit/FIWARE/keycloak-vc-issuer)
![](https://img.shields.io/github/tag/FIWARE/keycloak-vc-issuer.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/keycloak-vc-issuer) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/keycloak-vc-issuer) | :books: [Documentation](https://github.com/FIWARE/keycloak-vc-issuer/blob/main/README.md) | 
| --- | --- | --- |

### What is the Keycloak VC-Issuer ?

The Keycloak-VC-Issuer is plugin for [Keycloak](https://www.keycloak.org/) to support SIOP-2/ OIDC4VP clients and 
issue [Verifiable Credentials](https://www.w3.org/TR/vc-data-model/) through the OIDC4VCI-Protocol to compliant wallets. 

### Why use the Keycloak VC-Issuer ?

Issuance of Verified credentials is an essential step in creating a common data space. Effectively creating a digital club
card allowing a user to access various services. This plugin extends the existing Keycloak service so that Keycloak itself
is able to issue a credential.

<a name="credentials-config-service"/>

## :seedling: Credentials Config Service  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/credentials-config-service.svg)
![](https://img.shields.io/github/last-commit/FIWARE/credentials-config-service)
![](https://img.shields.io/github/tag/FIWARE/credentials-config-service.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/credentials-config-service) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/credentials-config-service) | :books: [Documentation](https://github.com/FIWARE/credentials-config-service/blob/main/README.md) | 
| --- | --- | --- |

### What is the Credentials Config Service ?

The Credentials Config Service manages and provides information about services and the credentials they are using. It returns 
the scope to be requested from the wallet per service and the credentials and issuers that are considered to be trusted for a 
certain service. 

### Why use the Credentials Config Service ?

In an DSBA-compliant framework, a Verifier is responsible to communicate with wallets and verify the credentials they provide.
To get this done, it needs information about:

-   the credentials to be requested from a wallet
-   the credentials and claims an issuer is allowed to issue
  
To do so, it requires a service that provides such information

<a name="trusted-issuers-registry"/>

## :seedling: Trusted Issuers Registry  (Incubated)

[![](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](./README.md)
![License](https://img.shields.io/github/license/FIWARE/trusted-issuers-registry.svg)
![](https://img.shields.io/github/last-commit/FIWARE/trusted-issuers-registry)
![](https://img.shields.io/github/tag/FIWARE/trusted-issuers-registry.svg)

| :octocat: [Git Repository](https://github.com/FIWARE/trusted-issuers-registry) | <img style="height:1em" src="https://quay.io/static/img/quay_favicon.png"/> [quay.io](https://quay.io/repository/fiware/trusted-issuers-registry) | :books: [Documentation](https://github.com/FIWARE/trusted-issuers-registry/blob/main/README.md) | 
| --- | --- | --- |

### What is the Trusted Issuers Registry ?

The Trusted Issuers Registry provides both an EBSI Trusted Issuers Registry implementation and an iShare implementation. 
The service provides data from an NGSI-LD compliant backend and configuration files.

### Why use the Trusted Issuers Registry ?

A Trusted Issuers Registry (TIR) is a decentralised registry for storing information about trusted issuers, such as public information and accreditations. The TIR stores all information within a smart contract in the form of Verifiable Accreditations, which are issued by Trust Chain participants or self-issued. Issuers can then designate proxies for credential verification that can be used to assess the validity of the credential or check whether it has been revoked.
