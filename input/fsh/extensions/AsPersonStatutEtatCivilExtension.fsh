Extension: 		AsPersonStatutEtatCivilExtension
Id: 			as-ext-person-statut-etat-civil
Title:			"AS Person Statut Etat Civil Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour décrire le statut de certification d'état civil et sa date de transmission."

* ^context.type = #element
* ^context.expression = "Person"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    statutEtatCivil 0..1 and
    dateStatutEtatCivil 0..1

// statutEtatCivil
* extension[statutEtatCivil].value[x] only CodeableConcept
* extension[statutEtatCivil].valueCodeableConcept from https://mos.esante.gouv.fr/NOS/JDV_J111-StatutEtatCivil-ENREG/FHIR/JDV-J111-StatutEtatCivil-ENREG (preferred)
* extension[statutEtatCivil] ^short = "Statut de la demande de certification auprès de l'organisme certificateur."

// dateStatutEtatCivil
* extension[dateStatutEtatCivil].value[x] only date
* extension[dateStatutEtatCivil] ^short = "Date de transmission du statut d'état civil de la personne par l'organisme certificateur d'état-civil."
