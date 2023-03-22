Extension: HealthcareServiceActivityType
Id: HealthcareService-ActivityType

* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J131-CategorieActiviteSanitaireRegulee-RASS (required)
* value[x] ^binding.description = "Types d'activités autorisées"
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R277-CategorieActiviteSanitaireRegulee/FHIR/TRE-R277-CategorieActiviteSanitaireRegulee" (exactly)