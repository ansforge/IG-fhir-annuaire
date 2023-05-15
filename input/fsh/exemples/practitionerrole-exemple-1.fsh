Instance: practitionerrole-exemple-1
InstanceOf: PractitionerRole
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-03-04T01:54:45.807+00:00"
* meta.source = "https://annuaire.sante.fr"
* meta.profile = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole"
* language = #fr
* extension.url = "http://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-name"
* extension.valueHumanName.family = "MENIGAUX"
* extension.valueHumanName.given = "CHRISTOPHE"
* extension.valueHumanName.suffix = "DR"
* active = true
* practitioner = Reference(003-161348)
* code.coding[0] = $JDV-J106-EnsembleProfession-RASS#10
* code.coding[+] = $JDV-J89-CategorieProfessionnelle-RASS#C