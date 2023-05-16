Extension: 		AsPractitionerBirthPlaceExtension
Id: 			as-ext-practitioner-birth-place
Title:			"AS Practitioner Birth Place Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel (Practitioner)."

* ^context.type = #element
* ^context.expression = "Practitioner"

* valueAddress only AsAddressExtendedProfile
* valueAddress ^comment = "Synonyme MOS : lieuNaissance"
* valueAddress ^short = "Lieu de naissance de la personne."