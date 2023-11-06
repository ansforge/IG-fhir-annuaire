Instance: as-sp-data-registration-authority
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsDataRegistrationAuthoritySearchParameter"
* description = "Paramètre de recherche pour récupérer une ressource par autorité d'enregistrement des données."
* code = #data-information-system
* base[0] = #Organization
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* base[+] = #Device
* base[+] = #HealthcareService
* type = #token
* expression = "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='autorite-enregistrement').value"