Instance: device-exemple-1
InstanceOf: as-device
Usage: #example
* id = "002-3635099"
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-05T12:24:00.236+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-device"
* language = #fr
* extension[0].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-device-number-authorization-arhgos"
* extension[=].valueString = "93-93-1905"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-device-authorization-date-device"
* extension[=].valueDate = "2007-06-19"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-device-Period-implantation"
* extension[=].valuePeriod.start = "2014-09-26"
* extension[=].valuePeriod.end = "2027-03-25"
* identifier.value = "93-93-1905"
* status = #active
* manufacturer = "0000"
* serialNumber = "INCISIVE CT N 550020"
* type = $JDV-J135-EquipementMaterielLourd-RASS#05602
* owner = Reference(as-organization/001-01-960859)