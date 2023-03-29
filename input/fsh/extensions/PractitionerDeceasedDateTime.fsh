Extension: 		PractitionerDeceasedDateTime
Id: 			Practitioner-DeceasedDateTime
Title:			"EAS Practitioner Deceased Date Time"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the practitioner if applicable)."		

* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"