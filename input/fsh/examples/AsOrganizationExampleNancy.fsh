Instance: example-organization-nancy
InstanceOf: AsOrganizationProfile

* identifier[idNatSt].use = #official
* identifier[idNatSt].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNST 
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1540002698"

* identifier[finess].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#FINEG
* identifier[finess].system = "https://finess.esante.gouv.fr"
* identifier[finess].value = "540002698"


* active = true

* name = "CHRU NANCY - HOPITAUX DE BRABOIS"

* address.city = "VANDOEUVRE LES NANCY CEDEX"
* address.postalCode = "54511"
* address.district = "52"
* address.extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* address.extension[0].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune#54547


* address.line = "R DU MORVAN, 54511 VANDOEUVRE LES NANCY CEDEX"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[0].valueString = "R"

* address.line.extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[1]..valueString = "DU MORVAN"

* telecom[0].system = #phone
* telecom[0].value = "0383153030"
* telecom[0].rank = 1

* telecom[1].system = #fax
* telecom[1].value = "0383153522"

* telecom[2].system = #email
* telecom[2].value = "direction.generale@chu-nancy.fr"


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