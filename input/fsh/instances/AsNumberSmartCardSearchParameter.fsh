Instance: as-sp-number-smartcard
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsNumberSmartCardSearchParameter"
* description = "Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par son numéro de carte CPx."
* code = #number-smartcard
* base = #PractitionerRole
* type = #string
* expression = "PractitionerRole.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension(url='number').valueString"