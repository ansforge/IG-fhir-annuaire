Instance: as-sp-practitionerrole-name
InstanceOf: SearchParameter
Usage: #definition
* name = "AsPractitionerRoleNameSearchParameter"
* status = #active
* date = "2021-12-01"
* publisher = "ANS"
* description = "Paramètre de recherche permettant de chercher le nom d'un PractitionerRole. Permet de chercher n'importe quelle chaîne de caractère dans family, give, prefix, suffix, suffix, and/or text."
* code = #name
* base = #PractitionerRole
* type = #string
* expression = "PractitionerRole.extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-name').valueHumanName"
