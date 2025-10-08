Profile: 		AsDrPractitionerRoleProfile
Parent: 		as-practitionerrole
Id: 			as-dr-practitionerrole
Title:			"AS Donnée Restreinte PractitionerRole Profile"
Description: 	"Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-practitionerrole)
* meta.profile[fr-canonical] 1..1

* meta.extension[as-ext-data-trace] MS
* practitioner MS 
* organization MS
* healthcareService MS
* identifier MS
* active MS
* period MS
* code[genreActivite] MS
* code[modeExercice] MS
* code[typeActiviteLiberale] MS
* code[statutProfessionnelSSA] MS
* code[statutHospitalier] MS
* code[fonction] MS
* code[metierPharmacien] MS
* telecom MS
* availableTime MS
* notAvailable MS
* availabilityExceptions MS
* endpoint MS
* extension[as-ext-practitionerrole-contracted] MS
* extension[as-ext-practitionerrole-hascas] MS
* extension[as-ext-practitionerrole-vitale-accepted] MS

* practitioner 1..1 
* organization 0..1
* specialty 0..0
* healthcareService 0..0
* identifier[idSituationExercice] 0..1
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0