Instance: example-organization-fictive
InstanceOf: AsOrganizationProfile
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"

* identifier[idNatSt].use = #official
* identifier[idNatSt].type = http://interopsante.org/CodeSystem/fr-v2-0203#IDNST //Have to be chaned to the new url type
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1458174839"

* identifier[finess].type = http://interopsante.org/CodeSystem/fr-v2-0203#FINEG
* identifier[finess].system = "http://finess.esante.gouv.fr"
* identifier[finess].value = "458174839"


* active = true

* name = "Hôpital fictif"
* alias = "Hôpital fictif pour le guide d'implémentation de l'annuaire"

* address.city = "BOURGES"
* address.postalCode = "18000"
* address.district = "18"

* address.extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* address.extension[0].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune#18000

* address.line = "R DE LA LIBERTE, 18000 BOURGES"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[0].valueString = "R"

* address.line.extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[1]..valueString = "DE LA LIBERTE"

* telecom[0].system = #phone
* telecom[0].value = "0248391028"
* telecom[0].rank = 1

* telecom[1].system = #fax
* telecom[1].value = "0248391029"

* telecom[2].system = #email
* telecom[2].value = "direction@hopital-fictif.fr"