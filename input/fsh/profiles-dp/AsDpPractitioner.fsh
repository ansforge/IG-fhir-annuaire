Profile: 		ASDPPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"Profil créé à partir de as-practitioner dans le contexte de l'Annuaire Santé pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
* identifier 1..*
* active 1..1

* name.use 0..0
* name.family 0..0
* name.given 0..0
* name.prefix 0..1

* gender 0..0
* birthDate 0..0
* extension[as-ext-practitioner-birth-place] 0..0
* extension[as-ext-practitioner-nationality] 0..0
* extension[as-ext-practitioner-deceased-date-time] 0..0

* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data

* address 0..0

* photo 0..0

* qualification.identifier 0..0
* qualification.period 0..0 // under discussion
// To be continued

// langueParlee
* communication 0..0
