Profile: AsHealthcareServiceSocialEquipmentProfile
Parent: HealthcareService
Id: as-healthcareservice-social-equipment
Title: "AS HealthcareService Social Equipment Profile"
Description: "Profil créé à partir de la ressource HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS."
/* profils references */
* providedBy only reference(FrOrganization or AsOrganizationProfile)
/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $HealthcareService-authorizationDate named authorizationDate 0..1 MS and
    $HealthcareService-implementationPeriod named installationDate 0..1 MS
* extension[installationDate] ^isModifier = false
// identifiant
* identifier 0..* MS
* identifier ^short = "numeroAutorisationARHGOS"
* identifier ^comment = "Identifiant fonctionnel, numéro d'autorisation ARHGOS"
// idStructure
* providedBy ^short = "idStructure"
* providedBy ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cet equipement social"
// disciplineEquipementSociale
* category 0..* MS
* category ^short = "disciplineEquipementSociale"
* type from $JDV-J136-DisciplineEquipementSocial-RASS (required)
* type ^binding.description = "La discipline détermine la nature de l’activité"
// clientele
* eligibility 0..* MS
* eligibility ^short = "clientele"
* eligibility.code from $JDV-J137-Clientele-RASS (extensible)
* eligibility.code ^binding.description = "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline"
// modeFonctionnement
* characteristic 0..* MS
* characteristic ^short = "modeFonctionnement"
* characteristic from $JDV-J138-TypeActivite-RASS (extensible)
* characteristic ^binding.description = "Le mode de fonctionnement précise la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline"
