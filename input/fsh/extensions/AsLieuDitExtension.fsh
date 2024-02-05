Extension: 		AsLieuDit
Id: 			as-ext-lieu-dit
Title:			"AS Lieu Dit Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour indiquer le lieu dit"
* . ^short = "DataTrace : Permet d'indiquer le lieu dit"


* ^context.type = #element
* ^context.expression = "Address.line"

* value[x] only string