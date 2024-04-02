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
    AsHealthcareServiceAuthorizationExtension named as-ext-healthcareservice-authorization 0..* MS and
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
* providedBy only Reference(FrOrganization or AsOrganizationProfile)

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