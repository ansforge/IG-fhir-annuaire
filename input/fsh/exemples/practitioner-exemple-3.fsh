Instance: practitioner-exemple-3
InstanceOf: Practitioner
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-04T01:54:45.803+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner"
* language = #fr
* extension.url = "https://annuaire.sante.gouv.fr/fhir/StructureDefinition/MailboxMSS"
* extension.extension[0].url = "value"
* extension.extension[=].valueString = "christophe.menigaux@aphp.mssante.fr"
* extension.extension[+].url = "type"
* extension.extension[=].valueCodeableConcept = $TRE-R257-TypeBAL#PER
* extension.extension[+].url = "digitization"
* extension.extension[=].valueBoolean = true
* identifier[0].use = #official
* identifier[=].type = $v2-0203#IDNPS
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[=].value = "810001033801"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#RPPS
* identifier[=].system = "http://rpps.fr"
* identifier[=].value = "10001033801"
* active = true
* name.prefix = "M"
* qualification[0].code.coding[0] = $TRE-R49-DiplomeEtudeSpecialisee#DSM02
* qualification[=].code.coding[+] = $TRE-R14-TypeDiplome#DES
* qualification[+].code.coding[0] = $TRE-R48-DiplomeEtatFrancais#DE05
* qualification[=].code.coding[+] = $TRE-R14-TypeDiplome#DE