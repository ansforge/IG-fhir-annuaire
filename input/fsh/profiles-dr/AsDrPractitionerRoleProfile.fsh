Profile: 		AsDrPractitionerRoleProfile
Parent: 		as-practitionerrole
Id: 			as-dr-practitionerrole
Title:			"AS Donnée Restreinte PractitionerRole Profile"
Description: 	"Profil créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé."

* practitioner 1..1 
* organization 0..1
* location 0..0
* healthcareService 0..0
* extension[as-ext-digital-certificate].extension[domain] ..0 // Cardinalité : 0..0 pour les personnes physiques ; 0..1 pour les structures
* identifier[idSituationExercice] 0..1
* identifier[numeroAm] 0..1
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0