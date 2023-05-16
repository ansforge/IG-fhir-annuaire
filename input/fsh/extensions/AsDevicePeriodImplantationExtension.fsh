Extension: AsDevicePeriodImplantationExtension
Id: as-ext-device-Period-implantation
Title: "AS Device Period Implantation Extension"
Description: "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte des dates de mise en oeuvre d’un équipement matériel lourd."

* ^context.type = #element
* ^context.expression = "Device"

* . ^short = "Dates de mise en oeuvre de l'EML"

* value[x] only Period

// datePremiereMEO
* valuePeriod.start MS
* valuePeriod.start ^short = "Date de première mise en œuvre de l'activité de soin."
* valuePeriod.start ^comment = "Synonyme FINESS : date de mise en œuvre"

// dateFin
* valuePeriod.end MS
* valuePeriod.end ^short = "Date d'échéance de l'autorisation."
* valuePeriod.end ^comment = "Synonyme FINESS : date de fin de mise en œuvre"