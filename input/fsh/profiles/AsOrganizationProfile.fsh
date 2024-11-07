Profile: AsOrganizationProfile
Parent: fr-core-organization
Id: as-organization
Title: "AS Organization Profile"
Description: "Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le fichier national des établissements sanitaires et sociaux (FINESS) ou dans le Système Informatique pour le Répertoire des Entreprises et de leurs Établissements (SIRENE) dédié aux entreprises, associations et organismes du secteur public."

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator[0].type = #pattern
* telecom ^slicing.discriminator[0].path = "system" 
* telecom ^slicing.discriminator[1].type = #exists
* telecom ^slicing.discriminator[1].path = "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"


* telecom.extension contains FRCoreContactPointEmailTypeExtension named emailType 0..1

* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "Les BALs MSS de type ORG ou APP rattachées à une personne morale responsable de l’accès et de l’usage de la BAL (boiteLettreMSS)."

* telecom[mailbox-mss].extension contains FRCoreContactPointEmailTypeExtension named emailType 0..1

