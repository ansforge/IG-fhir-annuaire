Extension: 		AsPersonBirthPlaceExtension
Id: 			as-ext-person-birth-place
Title:			"AS Person Birth Place Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel en tant que personne physique."

* ^context.type = #element
* ^context.expression = "Person"

* valueAddress only AsAddressExtendedProfile
* valueAddress ^short = "Lieu de naissance de la personne (Synonyme MOS : lieuNaissance)."