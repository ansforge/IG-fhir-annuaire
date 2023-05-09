Profile: AsHealthcareServiceHealthCareActivityProfile
Parent: HealthcareService
Id: as-healthcareservice-healthcare-activity
Title: "As HealthcareService HealthCare Activity Profile"
Description: "Profil créé à partir de la ressource HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS."
/* profils references */
* providedBy only Reference(FrOrganization or AsOrganizationProfile)
// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsHealthcareServiceActivityTypeExtension named as-ext-healthcareservice-activity-type 0..1 MS and
    AsHealthcareServiceAuthorizationDateExtension named as-ext-healthcareservice-authorization-date 0..1 MS and
    AsHealthcareServiceAuthorizationNumberARHGOSExtension named as-ext-healthcareservice-authorization-number-arhgos 1..1 MS and
    AsHealthcareServiceImplementationPeriodExtension named as-ext-healthcareservice-implementation-period 0..1 MS and
    AsHealthcareServiceDeleteAutorizationImplantationExtension named as-ext-healthcareservice-delete-autorization-implantation 0..1 MS and
    AsHealthcareServiceDateUpdateActivityExtension named as-ext-healthcareservice-date-update-activity 0..1 MS
* extension[as-ext-healthcareservice-activity-type] ^isModifier = false
* extension[as-ext-healthcareservice-authorization-date] ^isModifier = false
* extension[as-ext-healthcareservice-authorization-number-arhgos] ^isModifier = false
* extension[as-ext-healthcareservice-implementation-period] ^isModifier = false
* extension[as-ext-healthcareservice-delete-autorization-implantation] ^isModifier = false
* extension[as-ext-healthcareservice-date-update-activity] ^isModifier = false
// numeroAutorisationARHGOS
* identifier 0..* MS
* identifier ^comment = "Synonyme : numeroAutorisationARHGOS"
* identifier ^short = "Identifiant fonctionnel, numéro d'autorisation ARHGOS."
// idStructure
* providedBy 0..1 MS
* providedBy ^comment = "Synonyme : idNat_Struct"
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattachée cette activité sanitaire."
// modalite
* category 0..* MS
* category ^comment = "Synonyme : modalite"
* category ^short = "La modalité étant un mode d’application ou un type de soin prévu par les textes réglementaires encadrant chaque activité de soins."
* category from $JDV-J132-ModaliteActivite-RASS (required)
* category ^binding.description = "Liste des modalités"
//
* type ^short = "Code définissant l'activité de soins autorisée."
* type from $JDV-J133-ActiviteSanitaireRegulee-RASS (required)
* type ^binding.description = "Liste des activités sanitaires"
// activite - HealthcareService.specialty
* specialty 0..* MS
* specialty ^comment = "Synonyme : activite"
* specialty ^short = "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), \r\nla liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP)"
// forme
* characteristic 0..* MS
* characteristic from $JDV-J134-FormeActivite-RASS (required)
* characteristic ^comment = "Synonyme : forme"
* characteristic ^short = "La forme d'activité étant un type d’organisation de prise en charge."
* characteristic ^binding.description = "Liste des formes d'activité"