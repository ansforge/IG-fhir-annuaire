Extension: 		DevicePeriodImplantation
Id: 			Device-PeriodImplantation
Title:			"EAS Device Period Implantation"
Description:	"Extension créée dans le cadre de l'annuaire santé pour prise en compte des dates de mise en oeuvre d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "Dates de mise en oeuvre de l'EML"
* value[x] only Period
* value[x].start ^short = "Date de mise en œuvre"
* value[x].end ^short = "Date de fin de mise en œuvre"