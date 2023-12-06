Extension: 		AsPractitionerAuthorizationExtension
Id: 			as-ext-practitioner-authorization
Title:			"AS Practitioner Authorization Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice)."

* ^context.type = #element
* ^context.expression = "Practitioner"
* . ^short = "AutorisationExercice : Il s'agit d'une autorisation délivrée par le Ministère de la Santé ou par l'Ordre au professionnel pour accès à l'exercice de la profession."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    type 0..1 and
    period 0..1 and
    field 0..1 and
    profession 0..1

// typeAutorisation
* extension[type] ^short = "Type d’autorisation (ex. Autorisation ministérielle de plein exercice, etc.)."
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J75-TypeAutorisation-RASS (required)

// periodValidite
* extension[period] ^short = "Période de validité de l'autorisation d'exercice."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDebutAutorisation : Date à partir de laquelle l’autorisation s’applique."
* extension[period].valuePeriod.end ^short = "dateFinAutorisation : Date de fin de validité de l'autorisation."

// disciplineAutorisee
* extension[field] ^short = "disciplineAutorisee : Discipline à laquelle l'autorisation d'exercice est restreinte, le cas échéant."
* extension[field].value[x] only CodeableConcept
* extension[field].valueCodeableConcept from $JDV-J76-DisciplineAutorisation-RASS (required)

// profession
* extension[profession] ^short = "profession : Profession pour laquelle l'autorisation est délivrée."
* extension[profession].value[x] only CodeableConcept
* extension[profession].valueCodeableConcept from $JDV-J106-EnsembleProfession-RASS (required)