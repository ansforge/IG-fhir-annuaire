Profile: AsHealthcareServiceHealthCareActivityProfile
Parent: HealthcareService
Id: as-healthcareservice-healthcare-activity
Title: "As HealthcareService HealthCare Activity Profile"
Description: "Profil créé à partir de la ressource HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS."
/* metadata */
* meta.lastUpdated 1..1
/* profils references */
providedBy only reference(FrOrganization or AsOrganizationProfile)
// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $HealthcareService-activityType named activityType 0..1 MS and
    $HealthcareService-authorizationDate named authorizationDate 0..1 MS and
    $HealthcareService-authorizationNumberARHGOS named authorizationNumberARHGOS 1..1 MS and
    $HealthcareService-implementationPeriod named implementationPeriod 0..1 MS and
    $HealthcareService-deleteAutorisationImplantation named deleteAutorisationImplantation 0..1 MS and
    $HealthcareService-dateUpdateActivity named dateUpdateActivity 0..1 MS
* extension[activityType] ^isModifier = false
* extension[authorizationDate] ^isModifier = false
* extension[authorizationNumberARHGOS] ^isModifier = false
* extension[implementationPeriod] ^isModifier = false
* extension[deleteAutorisationImplantation] ^isModifier = false
* extension[dateUpdateActivity] ^isModifier = false
// numeroAutorisationARHGOS
* identifier 0..* MS
* identifier ^short = "numeroAutorisationARHGOS"
* identifier ^comment = "Identifiant fonctionnel, numéro d'autorisation ARHGOS"
// idStructure
* providedBy 0..1 MS
* providedBy ^short = "idStructure"
* providedBy ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cette activité sanitaire"
// modalite
* category 0..* MS
* category ^short = "modalite"
* category ^comment = "Les modalités sont des modes d’application ou des types de soins prévus par les textes réglementaires encadrant chaque activité de soins"
* category from $JDV-J132-ModaliteActivite-RASS (required)
* category ^binding.description = "Modalité de l'activité de soins"
* type from $JDV-J133-ActiviteSanitaireRegulee-RASS (required)
* type ^binding.description = "Code définissant l'activité de soins autorisée"
// activite - HealthcareService.specialty
* specialty 0..* MS
* specialty ^short = "activite"
* specialty ^comment = "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), la liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP)"
// forme
* characteristic 0..* MS
* characteristic from $JDV-J134-FormeActivite-RASS (required)
 characteristic ^short = "forme"
* characteristic ^binding.description = "Une forme est un type d’organisation de prise en charge"
