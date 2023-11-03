Instance: pp16-practitioner
InstanceOf: AsDrPractitionerProfile
Usage: #example

//Identifiant technique
* id = "3719500"

//Metadata
* meta.versionId = "0.1"
* meta.source = "https://annuaire.sante.fr"
* meta.lastUpdated = "2019-08-31T01:00:00.000+01:00"
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner"

//Active
* active = true

//Nom 
* name[+].prefix = "M"
* name[=].use = #usual 

* name[+].prefix = "M"
* name[=].use = #official 
* name[=].family = "CHATELIER"
* name[=].given = "David"

//Qualification
* qualification[+].code.coding[degreeR48].system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
* qualification[=].code.coding[degreeR48].code = #DE01
* qualification[=].period.start = "2019-01-08"

//Extension nationality
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-nationality"
* extension[=].extension[+].url = "code"
* extension[=].extension[=].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays#99100


