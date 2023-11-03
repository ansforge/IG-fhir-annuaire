Instance: pp15-practitioner
InstanceOf: AsDrPractitionerProfile
Usage: #example

//Identifiant technique
* id = "1586981"

//Metadata
* meta.versionId = "0.1"
* meta.source = "https://annuaire.sante.fr"
* meta.lastUpdated = "2019-08-31T01:00:00.000+01:00"
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dr-practitioner"

//Active
* active = true

//Nom 
* name[+].prefix = "MME"
* name[=].use = #usual 
* name[+].prefix = "MME"
* name[=].use = #official 
* name[=].family = "MOREL"
* name[=].given = "Victoire"

//Qualification

* qualification[+].code.coding[degreeR48].system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"
* qualification[=].code.coding[degreeR48].code = #DE05
* qualification[=].period.start = "2018-06-15"

* qualification[+].code.coding[degreeR50].system = "https://mos.esante.gouv.fr/NOS/TRE_R50-DESCGroupe1Diplome/FHIR/TRE-R50-DESCGroupe1Diplome"
* qualification[=].code.coding[degreeR50].code = #DSM220
* qualification[=].period.start = "2018-06-29"

* qualification[+].code.coding[degreeR49].system = "https://mos.esante.gouv.fr/NOS/TRE_R49-DiplomeEtudeSpecialisee/FHIR/TRE-R49-DiplomeEtudeSpecialisee"
* qualification[=].code.coding[degreeR49].code = #DSM24
* qualification[=].period.start = "2018-06-15"

* qualification[+].code.coding[degreeR49].system = "https://mos.esante.gouv.fr/NOS/TRE_R49-DiplomeEtudeSpecialisee/FHIR/TRE-R49-DiplomeEtudeSpecialisee"
* qualification[=].code.coding[degreeR49].code = #DSM24
* qualification[=].period.start = "2018-06-15"

//Extension nationality
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-nationality"
* extension[=].extension[+].url = "code"
* extension[=].extension[=].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays#99100

//Extension birthPlace
* extension[+].url = "https://apifhir.annuaire.sante.fr/exposed/structuredefinition/practitioner-birthPlace"
* extension[=].valueAddress.text = "BORDEAUX"
* extension[=].valueAddress.extension[+].url = "http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode"
* extension[=].valueAddress.extension[=].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#33063