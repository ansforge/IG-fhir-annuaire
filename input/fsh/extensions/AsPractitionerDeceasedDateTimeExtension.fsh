Extension: 		AsPractitionerDeceasedDateTimeExtension
Id: 			as-ext-practitioner-deceased-date-time
Title:			"AS Practitioner Deceased Date Time Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the practitioner if applicable)."		

* ^context.type = #element
* ^context.expression = "Practitioner"

* valueDateTime only dateTime
* valueDateTime ^comment = "Synonyme : dateDeces"
* valueDateTime ^short = "Date de décès de la personne."