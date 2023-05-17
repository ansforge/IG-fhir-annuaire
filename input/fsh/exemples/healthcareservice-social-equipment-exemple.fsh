Instance: healthcareservice-social-equipment-exemple
InstanceOf: as-healthcareservice-social-equipment
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-05T12:24:31.361+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-social-equipment"
* language = #fr
* extension[0].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-authorization-date"
* extension[=].valueDate = "2009-12-31"
* extension[+].url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-healthcareservice-implementation-period"
* extension[=].valueDate = "2009-12-31"
* active = true
* providedBy = Reference(Organization/001-01-1267113)
* type = $JDV-J136-DisciplineEquipementSocial-RASS#508
* eligibility.code = $JDV-J137-Clientele-RASS#850
* characteristic = $JDV-J138-TypeActivite-RASS#21