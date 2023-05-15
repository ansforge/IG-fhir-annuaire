Instance: organization-exemple-1
InstanceOf: Organization
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-04T01:53:45.340+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
* language = #fr
* identifier[0].use = #official
* identifier[=].type = $fr-v2-0203#IDNST
* identifier[=].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[=].value = "001605494200"
* identifier[+].use = #official
* identifier[=].type = $TRE-G07-TypeIdentifiantStructure#0
* identifier[=].system = "urn:oid:1.2.250.1.213.1.6.4.3"
* identifier[=].value = "01605494200"
* identifier[+].use = #official
* identifier[=].type = $fr-v2-0203#INTRN
* identifier[=].system = "https://annuaire.sante.fr"
* identifier[=].value = "CEJ01605494200"
* active = true
* type[0] = $fr-v2-3307#LEGAL-ENTITY
* type[+] = $TRE-R02-SecteurActivite#SA08
* name = "CABINET M HARMEL"