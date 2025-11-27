Instance: as-sp-organization-period
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsOrganiationPeriodSearchParameter"
* description = "Paramètre de recherche pour récupérer une organisation par période d'activ"
* code = #period
* base[0] = #Organization
* type = #date
* expression = "address.extension.where(url='http://hl7.org/fhir/StructureDefinition/organization-period').value"