Instance: organization-exemple-2
InstanceOf: Organization
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-05T10:35:57.668+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
* language = #fr
* identifier[0].use = #official
* identifier[=].type = $fr-v2-0203#IDNST
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[=].value = "1060016219"
* identifier[+].use = #official
* identifier[=].type = $fr-v2-0203#FINEG
* identifier[=].system = "http://finess.sante.gouv.fr"
* identifier[=].value = "060016219"
* identifier[+].use = #official
* identifier[=].type = $fr-v2-0203#INTRN
* identifier[=].system = "https://annuaire.sante.fr"
* identifier[=].value = "F060016219"
* active = true
* type[0] = $fr-v2-3307#GEOGRAPHICAL-ENTITY
* type[+] = $TRE-R02-SecteurActivite#SA41
* type[+] = $JDV-J129-CategorieEtablissement-RASS#354
* name = "SSIAD ADMR MENTON"
* telecom[0].system = #phone
* telecom[=].value = "0492105973"
* telecom[=].rank = 1
* telecom[+].system = #fax
* telecom[=].value = "0492102127"
* telecom[+].system = #email
* telecom[=].value = "siege@admr06.org"
* address.extension.url = "http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode"
* address.extension.valueCoding = $TRE_R13-CommuneOM#06083
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "5"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address.line.extension[=].valueString = "R"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address.line.extension[=].valueString = "VICTOR HUGO"
* address.city = "06500 MENTON"
* address.postalCode = "06500"
* partOf = Reference(Organization/001-01-74546)