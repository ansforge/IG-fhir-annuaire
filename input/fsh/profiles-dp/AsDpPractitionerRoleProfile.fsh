Profile: 		AsDpPractitionerRoleProfile
Parent: 		as-practitionerrole
Id: 			as-dp-practitionerrole
Title:			"AS Donnée Publique PractitionerRole Profile"
Description: 	"Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé."

* practitioner 1..1 
* organization 0..1
* location 0..0
* healthcareService 0..0

* extension[as-ext-practitionerrole-contracted] 0..0
* extension[as-ext-practitionerrole-hascas] 0..0
* extension[as-ext-practitionerrole-vitale-accepted] 0..0
* identifier[idSituationExercice] 0..1
* identifier[numeroAm] 0..0
* active 1..1
* period 0..0
* specialty 0..0
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0
