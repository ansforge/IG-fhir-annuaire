Instance: as-sp-qualification-code
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsQualificationCodeSearchParameter"
* description = "Paramètre de recherche pour rechercher par code de qualification."
* code = #qualification-code
* base = #Practitioner
* type = #token
* expression = "qualification.code"