Profile: 		AsDrPersonProfile
Parent: 		as-person
Id: 			as-dr-person
Title:			"AS Donnée Restreinte Person Profile"
Description: 	"Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé."

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Slice based on the canonical url value"
* meta.profile contains as-dr-canonical 1..1
* meta.profile[as-dr-canonical] = Canonical(as-dr-person)

* name 0..1
* photo 0..0