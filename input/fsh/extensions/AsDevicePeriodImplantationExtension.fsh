Extension: AsDevicePeriodImplantationExtension
Id: as-ext-device-Period-implantation
Title: "AS Device Period Implantation Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte des dates de mise en oeuvre d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"
* . ^short = "Dates de mise en oeuvre de l'EML"
* value[x] only Period
* valuePeriod.start ^short = "Date de mise en œuvre"
* valuePeriod.end ^short = "Date de fin de mise en œuvre"
