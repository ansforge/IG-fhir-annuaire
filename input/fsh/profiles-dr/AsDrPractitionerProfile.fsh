Profile: 		AsDrPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dr-practitioner
Title:			"AS Donnée Restreinte Practitioner Profile"
Description: 	"Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-practitioner)
* meta.profile[fr-canonical] 1..1

* identifier[idNatPs] 1..1
* identifier[rpps] 1..1

// name
* name 0..1
// certificat
* extension[as-ext-digital-certificate].extension[domain] ..0 // Cardinalité : 0..0 pour les personnes physiques ; 0..1 pour les structures

