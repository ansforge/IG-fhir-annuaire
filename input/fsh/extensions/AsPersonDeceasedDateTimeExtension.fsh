Extension: 		AsPersonDeceasedDateTimeExtension
Id: 			as-ext-person-deceased-date-time
Title:			"AS Person Deceased Date Time Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable)."		

* ^url = http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime
* ^context.type = #element
* ^context.expression = "Person"

* valueDateTime only dateTime
* valueDateTime ^short = "Date de décès de la personne (dateDeces)."