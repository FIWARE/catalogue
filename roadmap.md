# FIWARE Catalogue Roadmap

The FIWARE Catalogue consists of a series of Generic Enablers. If you would like to learn more details about future
developments proposed for an individual Generic Enabler please check the "Roadmap" for the actual Generic Enabler
itself.

> The following release windows have been defined for the development period to the end of 2022
>
> -   Sept 2022 - **8.3** - Release prior to the FIWARE Summit
> -   January 2023 - **8.3.1** - End-of-year clean-up


## Introduction

This section elaborates on proposed new features or tasks which are expected to be added to the product in the
foreseeable future. There should be no assumption of a commitment to deliver these features on specific dates or in the
order given. The development team will be doing their best to follow the proposed dates and priorities, but please bear
in mind that plans to work on a given feature or task may be revised. All information is provided as a general
guidelines only, and this section may be revised to provide newer information at any time.

## Short term

The following list of features are planned to be addressed in the short term, and incorporated in the releases of the
catalogue over the next six months up to **Sept 2022** (next FIWARE Global Summit):

-   Require compliance of all **MUST** requirements within the
    [Contributor Requirements](https://fiware-requirements.rtfd.io) and display of [CII Best Practice Badges](https://bestpractices.coreinfrastructure.org/en)
-   Harden the experimental NGSI-LD interfaces for all Generic Enablers. The FIWARE Release major Version number will be 
    updated once sufficient numbers of Generic Enablers are fully NGSI-LD compliant
-   Continue onboarding additional Generic Enablers within the Robotics Domain
-   Create templates for scalable production-ready FIWARE deployment using Helm Charts
-   Integration with selected Distributed Ledger Technologies enabling distributed trusted upserts of selected NGSI transactions

## Medium term

The following list of features are planned to be addressed in the medium term, typically within the subsequent
release(s) generated in the next **9 months** after next planned release:

-   Standardize and harden NGSI-LD interfaces for all Generic Enablers according to the definitions within the updated ETSI specification
-   Standardize location and naming convention of FIWARE Docker Images
-   Improve integration testing to ensure all Generic Enablers integrate smoothly with the latest stable release of the
    Context Broker
-   Review Dockerfiles and broaden baseline image options to cover multiple scenarios
-   Create load test scenarios to demonstrate throughput. Load tests will be made publicly available and offer feedback
    to Generic Enabler owners

## Long term

The following list of features are proposals regarding the longer-term evolution of the product even though development
of these features has not yet been scheduled for a release in the near future. Please feel free to contact us if you
wish to get involved in the implementation or influence the roadmap

-   Add further quality-based metrics to each Generic Enabler
-   Ensure full NGSI-LD compliance for all Generic Enablers
