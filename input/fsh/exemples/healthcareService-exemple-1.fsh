Instance: healthcareService-exemple-1
InstanceOf: HealthcareService
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-05T12:20:42.832+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-healthcare-activity"
* language = #fr
* extension[0].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-activity-type"
* extension[=].valueCodeableConcept = $JDV-J131-CategorieActiviteSanitaireRegulee-RASS#01
* extension[+].url = "https://annuaire.sante.gouv.fr/fhir/StructureDefinition/HealthcareService-AuthorizationDate"
* extension[=].valueDate = "2010-09-28"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-authorization-number-arhgos"
* extension[=].valueString = "04-04-52938"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-implementation-period"
* extension[=].valuePeriod.start = "2010-10-13"
* extension[=].valuePeriod.end = "2028-04-12"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-delete-autorization-implantation"
* extension[=].valueBoolean = false
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-date-update-activity"
* extension[=].valueDate = "2023-03-03"
* identifier.value = "04-04-52938"
* active = true
* providedBy = Reference(Organization/001-01-222976)
* category = $JDV-J132-ModaliteActivite-RASS#09
* type = $JDV-J133-ActiviteSanitaireRegulee-RASS#50
* characteristic = $JDV-J134-FormeActivite-RASS#02