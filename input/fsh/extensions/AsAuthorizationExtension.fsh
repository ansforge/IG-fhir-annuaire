Extension: 		AsAuthorizationExtension
Id: 			as-ext-authorization
Title:			"AS Authorization Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés."

* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"

* ^context[1].type = #element
* ^context[1].expression = "Device"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    dateAuthorization 0..1 and 			// dateDecision
	periodAuthorization 0..1 and 		// datePremiereMEO +  dateFin 
	dateUpdateAuthorization 0..1 and 	// dateMajAutorisation
	deletedAuthorization 0..1 		// suppressionAutorisation

* extension[dateAuthorization].value[x] only date    
* extension[dateAuthorization] ^short = "Date de délivrance de l’autorisation."

* extension[periodAuthorization].value[x] only Period
* extension[periodAuthorization].valuePeriod.start ^short = "Date de première mise en œuvre."
* extension[periodAuthorization].valuePeriod.end ^short = "Date de fin de mise en œuvre."

* extension[dateUpdateAuthorization].value[x] only date    
* extension[dateUpdateAuthorization] ^short = "Date de dernière mise à jour de l’autorisation."

* extension[deletedAuthorization].value[x] only boolean    
* extension[deletedAuthorization] ^short = "Indicateur de suppression de l'autorisation."