Extension: 		AsHealthcareServiceAuthorizationExtension
Id: 			as-ext-healthcareservice-authorization
Title:			"AS HealthcareService Autorization Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations  des activités sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels lourds autorisés."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains

    dateAuthorization 0..1 and 			// dateDecision
	periodAuthorization 0..1 and 		// datePremiereMEO +  dateFin 
	dateUpdateAuthorization 0..1 and 	//dateMajAutorisation
	deleteAuthorization 0..1 and 		//suppressionAutorisation
	dateLastInstallation 0..1 and 		// dateDerniereInstallation
	deleteInstallation 0..1 and 		// suppressionImplantation ou suppressionInstallation
	sourceReportInstallation 0..1 		// sourceInformationInstallation
        
* extension[dateAuthorization].value[x] only date    
* extension[dateAuthorization] ^short = "Date de délivrance de l’autorisation."

* extension[periodAuthorization].value[x] only Period
* extension[periodAuthorization].valuePeriod.start ^short = "Date de première mise en œuvre."
* extension[periodAuthorization].valuePeriod.end ^short = "Date de fin de mise en œuvre."

* extension[dateUpdateAuthorization].value[x] only date    
* extension[dateUpdateAuthorization] ^short = "Date de dernière mise à jour de l’autorisation."

* extension[deleteAuthorization].value[x] only boolean    
* extension[deleteAuthorization] ^short = "Indicateur de suppression de l'autorisation."

* extension[dateLastInstallation].value[x] only date    
* extension[dateLastInstallation] ^short = "Date à laquelle le dernier constat d’installation des places est réalisé."

* extension[deleteInstallation].value[x] only boolean    
* extension[deleteInstallation] ^short = "Indicateur de suppression de l’installation."

* extension[sourceReportInstallation].value[x] only CodeableConcept
* extension[sourceReportInstallation].valueCodeableConcept from as-vs-source-information-installation (required)    
* extension[sourceReportInstallation] ^short = "Source ayant permis le constat d'installation."