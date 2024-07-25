Extension: 		AsDataTraceExtension
Id: 			as-ext-data-trace
Title:			"AS Data Trace Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour tracer l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)). Des études complémentaires vont être initiées pour envisager l'usage de la ressource Provenance ou meta.source."
* . ^short = "DataTrace : Informe sur l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    autorite-enregistrement 0..1 and
    systeme-information 0..1 and
    date-maj-ae 0..1

// typeAutorisation
* extension[autorite-enregistrement] ^short = "Autorité d'enregistrement de la ressource."
* extension[autorite-enregistrement].value[x] only CodeableConcept
* extension[autorite-enregistrement].valueCodeableConcept from $JDV-J83-AutoriteEnregistrement-RASS (required)

// periodValidite
* extension[systeme-information] ^short = "Système d'information de la ressource."
* extension[systeme-information].value[x] only code
* extension[systeme-information].valueCode ^short = "RPPS | ADELI | FINESS | MSS | CG"
* extension[systeme-information].valueCode from as-vs-type-systeme-information (extensible)


// date-maj-ae
* extension[date-maj-ae] ^short = "Date de mise à jour de la ressource de l'autorité d'enregistrement. Cette date est différente de l'atttribut lastUpdated dû au délai entre la mise à jour de la donnée au niveau de l'autorité d'enregistrement et la publication de la ressource technique au niveau de l'API FHIR."
* extension[date-maj-ae].value[x] only date
