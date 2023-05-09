Extension: 		AsPractitionerBirthPlaceExtension
Id: 			as-ext-practitioner-birth-place
Title:			"AS Practitioner Birth Place Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed

* valueAddress only AsAddressExtendedProfile
* valueAddress ^sliceName = "valueAddress"
* valueAddress ^short = "lieuNaissance"
* valueAddress ^definition = "Lieu de naissance de la personne."