Profile: HealthcareServiceHealthCareActivityRASS
Parent: HealthcareService
Id: rass-healthcare-service-healthcare-activity
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/HealthcareService-HealthCareActivity-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/HealthcareService-HealthCareActivity-rass" (exactly)
* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    HealthcareServiceActivityType named activityType 0..1 and
    HealthcareServiceAuthorizationDate named authorizationDate 0..1 and
    HealthcareServiceAuthorizationNumberARHGOS named authorizationNumberARHGOS 1..1 and
    HealthcareServiceImplementationPeriod named implementationPeriod 0..1 and
    HealthcareServiceDeleteAutorisationImplantation named deleteAutorisationImplantation 0..1 and
    HealthcareServiceDateUpdateActivity named dateUpdateActivity 0..1
* category from $JDV-J132-ModaliteActivite-RASS (extensible)
* category ^binding.description = "Binding JDV_J132- ModaliteActivite-RASS (dérivée de la TRE_R275-ModaliteActivite: « urn:oid:1.2.250.1.213.1.6.1.127 »)"
* type from $JDV-J133-ActiviteSanitaireRegulee-RASS (example)
* type ^binding.description = "Binding JDV_J133-ActiviteSanitaireRegulee-RASS (dérivée de la TRE_R274-ActiviteSanitaireRegulee: « urn:oid: 1.2.250.1.213.1.6.1.126»)"
* specialty ..0
* location ..0
* name ..0
* comment ..0
* extraDetails ..0
* photo ..0
* telecom ..0
* coverageArea ..0
* serviceProvisionCode ..0
* eligibility ..0
* program ..0
* characteristic from $JDV-J134-FormeActivite-RASS (required)
* characteristic ^binding.description = "Binding JDV_J134- FormeActivite-RASS (dérivée de la TRE_R276-FormeActivite : « urn:oid: 1.2.250.1.213.1.6.1.128»)"
* communication ..0
* referralMethod ..0
* appointmentRequired ..0
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0