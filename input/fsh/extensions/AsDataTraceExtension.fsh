Extension: 		AsDataTraceExtension
Id: 			as-ext-data-trace
Title:			"AS Data Trace Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour tracer l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)). Des études complémentaires vont être initiées pour envisager l'usage de la ressource Provenance ou meta.source"
* . ^short = "DataTrace : Informe sur l'origine de la donnée (Autorité d'Enregistrement (AE) et Système d'Information (SI)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    autorite-enregistrement 0..1 and
    systeme-information 0..1

// typeAutorisation
* extension[autorite-enregistrement] ^short = "Autorité d'enregistrement de la ressource."
* extension[autorite-enregistrement].value[x] only CodeableConcept
* extension[autorite-enregistrement].valueCodeableConcept from $JDV-J83-AutoriteEnregistrement-RASS (required)

// periodValidite
* extension[systeme-information] ^short = "Système d'information de la ressource."
* extension[systeme-information].value[x] only code
* extension[systeme-information].valueCode ^short = "RPPS | ADELI | FINESS | MSS | CG"
* extension[systeme-information].valueCode from type-systeme-information-vs (extensible)

CodeSystem:  TypeSystemeInformationCS
Id: type-systeme-information-cs
Title: "Type de système d'information"
Description:  "Type de système d'information pouvant alimenter l'annuaire santé."
* #RPPS "Répertoire partagé des professionnels de santé" "Répertoire partagé des professionnels de santé"
* #ADELI "Numéro ADELI" "Adeli est un répertoire national qui recense les professionnels de santé réglementés, qu'ils exercent en libéral ou salarial."
* #FINESS "Fichier national des établissements sanitaires et sociaux" "FINESS (Fichier National des Etablissements Sanitaires et Sociaux) est le répertoire national de référence des personnes morales intervenant dans les domaines sanitaire, médico-social et social et de l’enseignement des professions sanitaires et sociales."
* #CG "CG" "SI CPS"


ValueSet: TypeSystemeInformationVS
Id: type-systeme-information-vs
Title: "Type de système d'information"
Description:  "Type de système d'information pouvant alimenter l'annuaire santé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system type-systeme-information-cs

// SVS profile
* ^experimental = false