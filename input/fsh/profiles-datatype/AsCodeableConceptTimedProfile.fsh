Profile: 		AsCodeableConceptTimedProfile
Parent: 		CodeableConcept
Id: 			as-codeableconcept-timed
Title:			"AS CodeableConceptTimed Datatype Profile"
Description:	"Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains as-ext-codeableconcept-timed-metadata named as-codeableconcept-timed-metadata 0..*