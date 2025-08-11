Instance: as-sp-data-information-system
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsDataInformationSystemSearchParameter"
* description = "Paramètre de recherche pour récupérer une ressource par système d'information de provenance des données."
* code = #data-information-system
* base[0] = #Organization
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* base[+] = #Device
* base[+] = #HealthcareService
* type = #token
* expression = "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='systeme-information').value"