Profile: 		AsDrPractitionerRoleProfile
Parent: 		as-practitionerrole
Id: 			as-dr-practitionerrole
Title:			"AS Donnée Restreinte PractitionerRole Profile"
Description: 	"Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-practitionerrole)
* meta.profile[fr-canonical] 1..1

* practitioner 1..1 
* organization 0..1
* location 0..*
* specialty 0..0
* healthcareService 0..0
* identifier[idSituationExercice] 0..1
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0