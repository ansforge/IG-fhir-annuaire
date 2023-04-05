Profile: AsHealthcareServiceHealthCareActivityProfile
Parent: HealthcareService
Id: as-healthcareservice-healthcare-activity
Title: "As HealthcareService HealthCare Activity Profile"
Description: "Profil créé à partir de la ressource HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS."

* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $HealthcareService-activityType named activityType 0..1 and
    $HealthcareService-authorizationDate named authorizationDate 0..1 and
    $HealthcareService-authorizationNumberARHGOS named authorizationNumberARHGOS 1..1 and
    $HealthcareService-implementationPeriod named implementationPeriod 0..1 and
    $HealthcareService-deleteAutorisationImplantation named deleteAutorisationImplantation 0..1 and
    $HealthcareService-dateUpdateActivity named dateUpdateActivity 0..1
* extension[activityType] ^isModifier = false
* extension[authorizationDate] ^isModifier = false
* extension[authorizationNumberARHGOS] ^isModifier = false
* extension[implementationPeriod] ^isModifier = false
* extension[deleteAutorisationImplantation] ^isModifier = false
* extension[dateUpdateActivity] ^isModifier = false
* identifier ^short = "Numéro autorisation ARGHOS"
* providedBy ^short = "Référence vers la structure FINESS ET"
* providedBy ^comment = "Reference vers l'id de la ressource de la structure FINESS ET à laquelle est rattaché cette activité sanitaire"
* category from $JDV-J132-ModaliteActivite-RASS (required)
* category ^binding.description = "Modalité de l'activité de soins"
* type from $JDV-J133-ActiviteSanitaireRegulee-RASS (required)
* type ^binding.description = "Code définissant l'activité de soins autorisée"
* specialty ..0
* location ..0
* name ..0
* comment ..0
* extraDetails ..0
* photo ..0
* telecom ..0
* coverageArea ..0
* serviceProvisionCode ..0
* eligibility ..0
* program ..0
* characteristic from $JDV-J134-FormeActivite-RASS (required)
* characteristic ^binding.description = "Une forme est un type d’organisation de prise en charge"
* communication ..0
* referralMethod ..0
* appointmentRequired ..0
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0
