Extension: 		AsInstallationExtension
Id: 			as-ext-installation
Title:			"AS Installation Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les dates d'installation des équipements (HealthcareService) sanitaires, sociaux, médico-sociaux et d'enseignements"

* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"

* ^context[1].type = #element
* ^context[1].expression = "Device"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
	dateFirstInstallation 0..1 and 		// datePremiereInstallation
	dateLastInstallation 0..1 and 		// dateDerniereInstallation
	deletedInstallation 0..1 and 		// suppressionImplantation ou suppressionInstallation
	sourceReportInstallation 0..1 		// sourceInformationInstallation
        

* extension[dateFirstInstallation].value[x] only date    
* extension[dateFirstInstallation] ^short = "Date de première installation."

* extension[dateLastInstallation].value[x] only date    
* extension[dateLastInstallation] ^short = "dateDerniereInstallation : Date à laquelle le dernier constat d’installation des places est réalisé."

* extension[deletedInstallation].value[x] only boolean    
* extension[deletedInstallation] ^short = "suppressionImplantation ou suppressionInstallation : Indicateur de suppression de l’installation."

* extension[sourceReportInstallation].value[x] only CodeableConcept
* extension[sourceReportInstallation].valueCodeableConcept from https://mos.esante.gouv.fr/NOS/JDV_J261-SourceInformationInstallation-RASS/FHIR/JDV-J261-SourceInformationInstallation-RASS (required) 

* extension[sourceReportInstallation] ^short = "sourceInformationInstallation : Source ayant permis le constat d'installation."
