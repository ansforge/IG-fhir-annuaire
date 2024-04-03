Profile: AsOrganizationProfile
Parent: fr-core-organization
Id: as-organization
Title: "AS Organization Profile"
Description: "Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le fichier national des établissements sanitaires et sociaux (FINESS) ou dans le Système Informatique pour le Répertoire des Entreprises et de leurs Établissements (SIRENE) dédié aux entreprises, associations et organismes du secteur public."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS

/* donnees metiers */

// Organization.identifier
// Slices définies dans FrCore
* identifier[idNatSt] MS

// Organization.active
* active MS
* active ^short = "La ressource est-elle active? (active | inactive). true par défaut; false pour les structures supprimées."

// Organization.name
* name MS
* name ^short = "Raison sociale de la structure (Synonyme : raisonSociale, dénomination)."

// Organization.alias
* alias MS
* alias ^short = "Enseigne commerciale de la structure (Synonyme : complementRaisonSociale)."

/* champ d'activite de la structure */
// Slice de FrCoreOrganization
* type MS
* type contains
    activiteINSEE 0..1 and
    statutJuridiqueINSEE 0..1 and 
    sphParticipation 0..1 and
    typeEtablissement 0..1

// organizationType - slice de FrCoreOrganization
* type[organizationType] ^short = "Type de structure \r\nEntité Juridique : LEGAL-ENTITY; \r\nEntité Géographique : GEOGRAPHICAL-ENTITY"
* type[organizationType].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[organizationType].extension[as-ext-organization-types].valueCode = #organizationType

// activiteINSEE
* type[activiteINSEE] from $JDV-J99-InseeNAFrav2Niveau5-RASS (required)
* type[activiteINSEE] ^short = "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2).\r\nPlus précisément, on distingue le code APET pour les EG (Synonyme : codeAPEN)."
* type[activiteINSEE].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[activiteINSEE].extension[as-ext-organization-types].valueCode = #activiteINSEE

// statutJuridiqueINSEE
* type[statutJuridiqueINSEE] from $JDV-J100-FinessStatutJuridique-RASS (required)
* type[statutJuridiqueINSEE] ^short = "Statut juridique FINESS qui caractérise la situation juridique de la personne morale (Synonyme : statutJuridiqueINSEE)."
* type[statutJuridiqueINSEE].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[statutJuridiqueINSEE].extension[as-ext-organization-types].valueCode = #statutJuridiqueINSEE

// modaliteParticipationSPH
* type[sphParticipation] from $JDV-J162-ESPIC-RASS (required)
* type[sphParticipation] ^short = "Modalités de participation au service public hospitalier (Synonyme : modaliteParticipationSPH)."
* type[sphParticipation].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[sphParticipation].extension[as-ext-organization-types].valueCode = #sphParticipation

// typeEtablissement
* type[typeEtablissement] ^short = "Le type d’établissement détermine si c'est un établissement principal ou secondaire."
* type[typeEtablissement].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[typeEtablissement].extension[as-ext-organization-types].valueCode = #typeEtablissement
* type[typeEtablissement].text MS // TypeEtablissement est de type string dans le MOS, il faut donc mettre dans le champs text. Pourquoi est-ce que le type d'établissement est un text et non un code dans le MOS ?

// adresse
* address MS
* address ^short = "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique."
* address only AsAddressExtendedProfile

// telecommunication
* telecom MS
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.use ^comment = "« old » si les coordonnées de structure ont une date de fin"

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "Les BALs MSS de type ORG ou APP rattachées à une personne morale responsable de l’accès et de l’usage de la BAL (boiteLettreMSS)."

// lien EG/EJ
* partOf ^short = "Référence vers la structure de rattachement (lien EG/ EJ). Chaque entité geographique et ratachée à une entité juridique. C'est l'id de la ressource de l'entité juridique à laquelle est ratachée la structure qui est remontée dans l'element de référence partOf de l'entité géographique."
* partOf only Reference(fr-core-organization or AsOrganizationProfile)

// periode d'activite, extension définie dans FrCore
* extension[usePeriod].valuePeriod.start ^short = "Date d'ouverture de la structure."
* extension[usePeriod].valuePeriod.end ^short = "Date de fermeture de la structure."

// extensions
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..1 MS and
    AsOrganizationPharmacyLicenceExtension named as-ext-organization-pharmacy-licence 0..* MS and
 	AsOrganizationPricingModelExtension named as-ext-organization-pricing-model 0..1 MS and
	AsOrganizationClosingTypeExtension named as-ext-organization-closing-type 0..1 MS and
	AsOrganizationBudgetTypeExtension named as-ext-organization-budget-type 0..1 MS and
	AsOrganizationAuthorizationDeadlineExtension named as-ext-organization-authorization-deadline 0..1 MS
	
// digitalCertificate
* extension[as-ext-digital-certificate] ^short = "[DR] : certificat. Données descriptives du moyen d’identification par certificat."

// numeroLicence pour les officines
* extension[as-ext-organization-pharmacy-licence] ^short = "Numéro de la licence d'exploitation d’une officine (Synonyme : numeroLicence)."

// Organization.endpoint
* endpoint MS



Mapping:  AsOrganizationToMOS
Source:   AsOrganizationProfile
Target:   "EntiteJuridique"
Id:       as-organization-to-mos
Title:    "AsOrganization to MOS"
* -> "EntiteJuridique"
* identifier[finess] -> "numFiness"