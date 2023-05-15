Instance: practitioner-exemple-2
InstanceOf: Practitioner
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-04T02:35:02.591+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner"
* language = #fr
* identifier[0].use = #official
* identifier[=].type = $v2-0203#IDNPS
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[=].value = "0132611880"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#ADELI
* identifier[=].system = "http://adeli.fr"
* identifier[=].value = "132611880"
* active = true
* name.prefix = "MME"