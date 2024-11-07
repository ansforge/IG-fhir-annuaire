Instance: example-organization-nancy-with-emailtype
InstanceOf: AsOrganizationProfile


* telecom[0].extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
* telecom[0].extension[=].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
* telecom[0].system = #email
* telecom[0].value = "exemple.address@address.mssante.fr"