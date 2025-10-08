Profile: AsHealthcareServiceSocialEquipmentProfile
Parent: HealthcareService
Id: as-healthcareservice-social-equipment
Title: "AS HealthcareService Social Equipment Profile"
Description: "Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...)."
// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1



/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsAuthorizationExtension named as-ext-authorization 0..* and
    AsInstallationExtension named as-ext-installation 0..* and
    AsPatientTypeExtension named as-ext-patient-type 0..* and		// ageMinAutorise + ageMaxAutorise + ageMinInstalle + ageMaxInstalle
	AsSupportedCapacityExtension named as-ext-supported-capacity 0..*


	
/* HealthcareService.identifier */
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system value"


* identifier contains numAutorisationArhgos 0..1
* identifier[numAutorisationArhgos] ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS)."
* identifier[numAutorisationArhgos].system = "https://arhgos.ars.sante.fr/"

// idStructure
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement social (idNat_Struct, identifiantEJ, identifiantEG)."
* providedBy only Reference(fr-core-organization or AsOrganizationProfile)

// disciplineEquipementSociale

* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open

* type contains
    category 0..1

* type[category] ^short = "La catégorie de la discipline déterminant la nature de l’activité (disciplineEquipementSociale)."
* type[category] from $JDV-J136-DisciplineEquipementSocial-RASS (required)

// clientele
* eligibility ^short = "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline (clientele, public, patientele)."
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)

// modeFonctionnement
* characteristic ^short = "Le mode de fonctionnement précisant la modalité d’accueil, d’hébergement et/ou d’ouverture de l'activité associée à la discipline (modeFonctionnement, typeActivite)."
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)

Mapping:  AsHSSocialEquipmentToMOSSocialEquipment
Source:   AsHealthcareServiceSocialEquipmentProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-healthcare-social-equipment-to-mos-activite-sociale
Title:    "AsHealthcareServiceSocialEquipmentProfile to MOS - ActiviteSociale"
* -> "ActiviteSociale"
* extension[as-ext-authorization].extension[dateAuthorization] -> "ActiviteSociale.dateAutorisation"
* extension[as-ext-authorization].extension[deletedAuthorization] -> "ActiviteSociale.suppressionAutorisation"

* extension[as-ext-installation].extension[deletedInstallation] -> "ActiviteSociale.suppressionInstallation"
* extension[as-ext-installation].extension[dateFirstInstallation] -> "ActiviteSociale.datePremiereInstallation"

* extension[as-ext-supported-capacity].extension[capacityAvailable] -> "ActiviteSociale.capaciteAutorisee"
* extension[as-ext-supported-capacity].extension[femaleCapacityAvailable] -> "ActiviteSociale.capaciteAutoriseeFemme"
* extension[as-ext-supported-capacity].extension[maleCapacityAvailable] -> "ActiviteSociale.capaciteAutoriseeHomme"
* extension[as-ext-supported-capacity].extension[socialAssistanceCapacityAvailable] -> "ActiviteSociale.capaciteAutoriseeHabiliteAideSociale"
* extension[as-ext-supported-capacity].extension[installedCapacity] -> "ActiviteSociale.capaciteInstallee"
* extension[as-ext-supported-capacity].extension[femaleInstalledCapacity] -> "ActiviteSociale.capaciteInstalleeFemme"
* extension[as-ext-supported-capacity].extension[maleInstalledCapacity] -> "ActiviteSociale.capaciteInstalleeHomme"
* extension[as-ext-supported-capacity].extension[socialAssistanceInstalledCapacity] -> "ActiviteSociale.capaciteInstalleeHabiliteAideSociale"

* extension[as-ext-patient-type].extension[authorizedAgeRange].valueRange.low -> "ActiviteSociale.ageMinAutorisee"
* extension[as-ext-patient-type].extension[authorizedAgeRange].valueRange.high -> "ActiviteSociale.ageMaxAutorisee"
* extension[as-ext-patient-type].extension[installedAgeRange].valueRange.low -> "ActiviteSociale.ageMaxInstallee"
* extension[as-ext-patient-type].extension[installedAgeRange].valueRange.high -> "ActiviteSociale.ageMaxInstallee"
* type -> "ActiviteSociale.discipineEquipementSociale"
* eligibility.code -> "ActiviteSociale.clientele"
