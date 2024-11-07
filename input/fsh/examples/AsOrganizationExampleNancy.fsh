Instance: example-organization-nancy
InstanceOf: AsOrganizationProfile

* telecom[3].extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
* telecom[3].extension[=].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
* telecom[3].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata"
* telecom[3].extension[=].extension[0].url = "type"
* telecom[3].extension[=].extension[=].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL#ORG
* telecom[3].extension[=].extension[+].url = "description"
* telecom[3].extension[=].extension[=].valueString = "Description-mss"
* telecom[3].extension[=].extension[+].url = "digitization"
* telecom[3].extension[=].extension[=].valueBoolean = true
* telecom[3].extension[=].extension[+].url = "listeRouge"
* telecom[3].extension[=].extension[=].valueBoolean = false
* telecom[3].system = #email
* telecom[3].value = "exemple.address@address.mssante.fr"