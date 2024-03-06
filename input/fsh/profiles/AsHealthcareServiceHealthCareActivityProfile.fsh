Profile: AsHealthcareServiceHealthcareActivityProfile
Parent: HealthcareService
Id: as-healthcareservice-healthcare-activity
Title: "AS HealthcareService HealthCare Activity Profile"
Description: "Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS


// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains AsHealthcareServiceAuthorizationExtension named as-ext-healthcareservice-authorization 0..* MS

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
* providedBy 0..1 MS
* providedBy only Reference(FrOrganization or AsOrganizationProfile)
* providedBy ^short = "Référence vers l'id de la structure FINESS ET à laquelle est rattachée cette activité sanitaire (idNat_Struct)."

// modalite - HealthcareService.category
* category 0..* MS
* category ^short = "La modalité étant un mode d’application ou un type de soin prévu par les textes réglementaires encadrant chaque activité de soins (modalite)."
* category from $JDV-J132-ModaliteActivite-RASS (required)

// categorie - HealthcareService.type
* type ^short = "Catégorie d'activité de soin autorisée. \r\nExemple : Activités de soins Soumises à Reconnaissance contractuelle"
* type from $JDV_J131-CategorieActiviteSanitaireRegulee-RASS (required)

// activite - HealthcareService.specialty
* specialty 0..* MS
* specialty ^short = "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), \r\nla liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP).\nactivite"
* specialty from $JDV-J133-ActiviteSanitaireRegulee-RASS (required)

// forme
* characteristic 0..* MS
* characteristic ^short = "La forme d'activité étant un type d’organisation de prise en charge (forme)."
* characteristic from $JDV-J134-FormeActivite-RASS (required)