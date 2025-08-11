Instance: as-sp-insee-code
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "AsInseeCode"
* description = "Paramètre de recherche pour récupérer une organisation, par code Insee. Cf http://www.sirius-upvm.net/doc/usuels/codes_postaux.html"
* code = #address-insee
* base[0] = #Organization
* type = #string
* expression = "address.extension.where(url='https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code').value" //TODO - changer l'url avec la nouvelle version de FrCore