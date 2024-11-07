Instance: example-organization-nancy-with-emailtype
InstanceOf: AsOrganizationProfile


* telecom[3].extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
* telecom[3].extension[=].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE
* telecom[3].system = #email
* telecom[3].value = "exemple.address@address.mssante.fr"