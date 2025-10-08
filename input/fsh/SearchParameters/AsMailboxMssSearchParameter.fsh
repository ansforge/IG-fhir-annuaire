Instance: as-sp-mailbox-mss
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsMailboxMssSearchParameter"
* description = "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté."
* code = #mailbox-mss
* base[0] = #Organization
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* type = #string
* expression = "telecom.value"
* modifier[0] = #contains
* modifier[+] = #exact