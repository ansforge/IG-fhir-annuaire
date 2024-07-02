Profile: AsHealthcareServiceSocialEquipmentProfile
Parent: HealthcareService
Id: as-healthcareservice-social-equipment
Title: "AS HealthcareService Social Equipment Profile"
Description: "Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS."
// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS


/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsAuthorizationExtension named as-ext-authorization 0..* MS and
    AsPatientTypeExtension named as-ext-patient-type 0..* MS and		// ageMinAutorise + ageMaxAutorise + ageMinInstalle + ageMaxInstalle
	AsSupportedCapacityExtension named as-ext-supported-capacity 0..* MS
	
/* HealthcareService.identifier */
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"


* identifier contains numAutorisationArhgos 0..1
* identifier[numAutorisationArhgos] ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS)."
* identifier[numAutorisationArhgos].system = "https://arhgos.ars.sante.fr/"

// idStructure
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement social (idNat_Struct, identifiantEJ, identifiantEG)."
* providedBy only Reference(fr-core-organization or AsOrganizationProfile)

// disciplineEquipementSociale
* type 0..* MS
* type ^short = "La discipline déterminant la nature de l’activité (disciplineEquipementSociale)."
* type from $JDV-J136-DisciplineEquipementSocial-RASS (required)

// clientele
* eligibility 0..* MS
* eligibility ^short = "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline (clientele, public, patientele)."
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)

// modeFonctionnement
* characteristic 0..* MS
* characteristic ^short = "Le mode de fonctionnement précisant la modalité d’accueil, d’hébergement et/ou d’ouverture de l'activité associée à la discipline (modeFonctionnement, typeActivite)."
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)

Mapping:  AsHSSocialEquipmentToMOSSocialEquipment
Source:   AsHealthcareServiceSocialEquipmentProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-healthcare-social-equipment-to-mos-activite-sociale
Title:    "AsHealthcareServiceSocialEquipmentProfile to MOS - ActiviteSociale"
* -> "ActiviteSociale"
* extension[as-ext-authorization].extension[dateAuthorization] -> "ActiviteSociale.dateAutorisation"
* extension[as-ext-authorization].extension[periodAuthorization].valuePeriod.start -> "ActiviteSociale.datePremiereInstallation"
* extension[as-ext-authorization].extension[deleteAuthorization] -> "ActiviteSociale.suppressionAutorisation"
* extension[as-ext-authorization].extension[deleteInstallation] -> "ActiviteSociale.suppressionInstallation"

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