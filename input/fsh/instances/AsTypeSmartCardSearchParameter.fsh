Instance: as-sp-type-smartcard
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsTypeSmartCardSearchParameter"
* description = "Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par type de carte CPx."
* code = #number-smartcard
* base = #PractitionerRole
* type = #token
* expression = "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension.where(url='type').value"