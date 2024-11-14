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
* type[sphParticipation] ^short = "Modalités de participation au service public hospitalier (Synonyme : modaliteParticipationSPH)."
* type[sphParticipation] from $JDV-J162-ESPIC-RASS (required)
* type[sphParticipation].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[sphParticipation].extension[as-ext-organization-types].valueCode = #sphParticipation

// typeEtablissement
* type[typeEtablissement] ^short = "Le type d’établissement détermine si c'est un établissement principal ou secondaire."
* type[typeEtablissement] from as-vs-type-etablissement (required)
* type[typeEtablissement].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[typeEtablissement].extension[as-ext-organization-types].valueCode = #typeEtablissement
// typeEtablissement est au format text dans le MOS. Un ValueSet a été créé pour vérifier la conformité au profil FHIR

* type[secteurActiviteRASS].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[secteurActiviteRASS].extension[as-ext-organization-types].valueCode = #secteurActiviteRASS

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
* telecom ^slicing.discriminator[0].type = #pattern
* telecom ^slicing.discriminator[0].path = "system" 
* telecom ^slicing.discriminator[1].type = #exists
* telecom ^slicing.discriminator[1].path = "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"

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



Mapping:  AsOrganizationToMOSEJ
Source:   AsOrganizationProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-organization-to-mos-ej
Title:    "AsOrganization to MOS - EJ"
* -> "EntiteJuridique"
* identifier[finess] -> "EntiteJuridique.numFiness"
* identifier[siren] -> "EntiteJuridique.numSiren"
* identifier[idNatSt] -> "EntiteJuridique.idNat_struct"
* extension[as-ext-organization-pharmacy-licence] -> "EntiteJuridique.numeroLicenceOfficine"
* name  -> "EntiteJuridique.raisonSociale"
* alias -> "EntiteJuridique.raisonSocialeLongue"
* type[statutJuridiqueINSEE] -> "EntiteJuridique.statutJuridique"
* type[activiteINSEE] -> "EntiteJuridique.codeAPEN"
* extension[usePeriod].valuePeriod.start -> "EntiteJuridique.dateCreation"
* extension[usePeriod].valuePeriod.end -> "EntiteJuridique.dateFermeture"
* extension[as-ext-organization-closing-type] -> "EntiteJuridique.typeFermeture"
* address -> "EntiteJuridique.adresseEJ"
* telecom -> "EntiteJuridique.telecommunication"
* telecom[mailbox-mss] -> "EntiteJuridique.boiteLettreMSS"

Mapping:  AsOrganizationToMOSEG
Source:   AsOrganizationProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-organization-to-mos-eg
Title:    "AsOrganization to MOS - EG"
* -> "EntiteGeographique"
* identifier[finess] -> "EntiteGeographique.numFiness"
* identifier[siren] -> "EntiteGeographique.numSiren"
* identifier[idNatSt] -> "EntiteGeographique.idNat_struct"
* name -> "EntiteGeographique.denominationEG"
* alias -> "EntiteGeographique.denominationEGLongue"
* type[activiteINSEE] -> "EntiteGeographique.codeAPET"
* extension[as-ext-organization-pricing-model] -> "EntiteGeographique.modeFixationTarifaire"
* extension[as-ext-organization-budget-type] -> "EntiteGeographique.natureEtablissement"
* extension[as-ext-organization-closing-type] -> "EntiteGeographique.typeFermeture"
* extension[usePeriod].valuePeriod.start -> "EntiteGeographique.dateOuverture"
* extension[usePeriod].valuePeriod.end -> "EntiteGeographique.dateFermeture"
* type[sphParticipation] -> "EntiteGeographique.codeAPET"
* active -> "EntiteGeographique.actif"
* address -> "EntiteGeographique.adresseEG"
* telecom -> "EntiteGeographique.telecommunication"
* telecom[mailbox-mss] -> "EntiteGeographique.boiteLettreMSS"