Profile: AsHealthcareServiceSocialEquipmentProfile
Parent: HealthcareService
Id: as-healthcareservice-social-equipment
Title: "AS HealthcareService Social Equipment Profile"
Description: "Profil créé à partir de la ressource HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS."
/* profils references */
* providedBy only Reference(FrOrganization or AsOrganizationProfile)

/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsHealthcareServiceAuthorizationDateExtension named as-ext-healthcareservice-authorization-date 0..1 MS and
    AsHealthcareServiceImplementationPeriodExtension named as-ext-healthcareservice-implementation-period 0..1 MS // date d'installation

// identifiant
* identifier 0..* MS
* identifier ^comment = "Synonyme : numeroAutorisationARHGOS"
* identifier ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS."

// idStructure
* providedBy ^comment = "Synonyme : idNat_Struct, identifiantEJ, identifiantEG"
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement social."

// disciplineEquipementSociale
* category 0..* MS
* category ^comment = "Synonyme : disciplineEquipementSociale"
* category ^short = "La discipline déterminant la nature de l’activité."
* type from $JDV-J136-DisciplineEquipementSocial-RASS (required)
* type ^binding.description = "Liste des disciplines"

// clientele
* eligibility 0..* MS
* eligibility ^comment = "Synonyme : clientele, public, patientèle"
* eligibility ^short = "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline."
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)
* eligibility.code ^binding.description = "Liste des populations prises en charge"

// modeFonctionnement
* characteristic 0..* MS
* characteristic ^comment = "Synonyme : modeFonctionnement, type d'activité"
* characteristic ^short = "Le mode de fonctionnement précisant la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline."
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)
* characteristic ^binding.description = "Liste des modes de fonctionnement"
