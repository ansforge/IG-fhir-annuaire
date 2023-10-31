Instance: as-sp-pharmacy-licence
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsPharmacyLicenceSearchParameter"
* description = "Paramètre de recherche pour récupérer une pharmacie par son numéro de licence."
* code = #pharmacy-licence
* base = #Organization
* type = #string
* expression = "Organization.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence').valueString"