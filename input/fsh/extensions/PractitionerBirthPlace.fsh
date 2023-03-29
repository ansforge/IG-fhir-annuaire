Extension: 		PractitionerBirthPlace
Id: 			Practitioner-BirthPlace
Title:			"EAS Practitioner Birth Place"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueAddress only FrAddressExtended
* valueAddress ^sliceName = "valueAddress"