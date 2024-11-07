Instance: example-organization-fictive-without-emailtype
InstanceOf: AsOrganizationProfile
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"

* telecom[0].system = #phone
* telecom[0].value = "0248391028"
* telecom[0].rank = 1

* telecom[1].system = #fax
* telecom[1].value = "0248391029"

* telecom[2].system = #email
* telecom[2].value = "direction@hopital-fictif.fr"