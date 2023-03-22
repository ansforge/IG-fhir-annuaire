Extension: DevicePeriodImplantation
Id: Device-PeriodImplantation

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "Dates de mise en oeuvre de l'EML"
* value[x] only Period
* value[x].start ^short = "Date de mise en œuvre"
* value[x].end ^short = "Date de fin de mise en œuvre"