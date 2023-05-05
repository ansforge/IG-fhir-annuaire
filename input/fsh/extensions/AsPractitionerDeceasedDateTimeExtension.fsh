Extension: 		AsPractitionerDeceasedDateTimeExtension
Id: 			as-ext-practitioner-deceased-date-time
Title:			"AS Practitioner Deceased Date Time Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the practitioner if applicable)."		

* ^context.type = #element
* ^context.expression = "Practitioner"

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueDateTime only dateTime
* valueDateTime ^sliceName = "valueDateTime"
* valueDateTime ^short = "dateDeces"
* valueDateTime ^definition = "Date de décès de la personne."