Instance: organization-1
InstanceOf: AsOrganizationProfile
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"

* identifier[idNatSt].use = #official
* identifier[idNatSt].type = http://interopsante.org/CodeSystem/fr-v2-0203#IDNST //Have to be chaned to the new url type
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value = "1540002698"
* active = true