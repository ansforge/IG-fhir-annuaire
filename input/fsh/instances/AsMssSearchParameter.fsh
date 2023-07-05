Instance: as-sp-ms-sante
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "ASMSSanté"
* description = "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté"
* code = #mailbox-mss
* base[0] = #Organization
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* type = #string
* expression = "telecom.value"