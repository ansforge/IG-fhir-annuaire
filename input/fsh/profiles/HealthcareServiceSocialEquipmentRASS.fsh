Profile: HealthcareServiceSocialEquipmentRASS
Parent: HealthcareService
Id: rass-healthcare-service-social-equipment
* ^url = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/HealthcareService-SocialEquipment-rass"

* meta.source = "https://annuaire.sante.fr" (exactly)
* meta.profile = "https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/HealthcareService-SocialEquipment-rass" (exactly)
* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    HealthcareServiceAuthorizationDate named authorizationDate 0..1 and
    HealthcareServiceInstallationDate named installationDate 0..1
* identifier ..0
* category ..0
* type from $JDV-J136-DisciplineEquipementSocial-RASS (required)
* type ^binding.description = "Binding JDV_J136- DisciplineEquipementSocial-RASS (dérivée de la TRE_R280-DisciplineEquipementSocial: « urn:oid: 1.2.250.1.213.1.6.1.133»)"
* specialty ..0
* location ..0
* name ..0
* comment ..0
* extraDetails ..0
* photo ..0
* telecom ..0
* coverageArea ..0
* serviceProvisionCode ..0
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)
* eligibility.code ^binding.description = "Binding JDV_J137-Clientele-RASS (dérivée de la TRE_R279-Clientele : « urn:oid: 1.2.250.1.213.1.6.1.132»)"
* eligibility.comment ..0
* program ..0
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)
* characteristic ^binding.description = "Binding JDV_J138- TypeActivite -RASS (dérivée de la TRE_R209-TypeActivite: « urn:oid: 1.2.250.1.213.2.2»)"
* communication ..0
* referralMethod ..0
* appointmentRequired ..0
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0