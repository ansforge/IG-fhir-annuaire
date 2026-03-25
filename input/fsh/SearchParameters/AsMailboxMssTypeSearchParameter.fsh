Instance: as-sp-mailbox-mss-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsMailboxMssTypeSearchParameter"
* description = "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par type de BAL MSSanté."
* code = #mailbox-mss-type
* base[0] = #Organization
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* type = #token
* expression = "telecom.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension.where(url='type').value"
