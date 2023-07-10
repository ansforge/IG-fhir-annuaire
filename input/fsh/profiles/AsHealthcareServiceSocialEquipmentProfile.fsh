Profile: AsHealthcareServiceSocialEquipmentProfile
Parent: HealthcareService
Id: as-healthcareservice-social-equipment
Title: "AS HealthcareService Social Equipment Profile"
Description: "Profil créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS."
/* profils references */
* providedBy only Reference(FrOrganization or AsOrganizationProfile)

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
    AsHealthcareServiceAuthorizationDateExtension named as-ext-healthcareservice-authorization-date 0..1 MS and
    AsHealthcareServiceImplementationPeriodExtension named as-ext-healthcareservice-implementation-period 0..1 MS // date d'installation

// identifiant
* identifier 0..* MS
* identifier ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS (Synonyme : numeroAutorisationARHGOS)."

// idStructure
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement social (Synonyme : idNat_Struct, identifiantEJ, identifiantEG)."

// disciplineEquipementSociale
* category 0..* MS
* category ^short = "La discipline déterminant la nature de l’activité (Synonyme : disciplineEquipementSociale)."
* type from $JDV-J136-DisciplineEquipementSocial-RASS (required)
* type ^binding.description = "Liste des disciplines"

// clientele
* eligibility 0..* MS
* eligibility ^short = "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline (Synonyme : clientele, public, patientèle)."
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)
* eligibility.code ^binding.description = "Liste des populations prises en charge"

// modeFonctionnement
* characteristic 0..* MS
* characteristic ^short = "Le mode de fonctionnement précisant la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline (Synonyme : modeFonctionnement, type d'activité)."
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)
* characteristic ^binding.description = "Liste des modes de fonctionnement"
