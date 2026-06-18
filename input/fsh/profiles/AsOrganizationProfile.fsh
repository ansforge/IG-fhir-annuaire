Profile: AsOrganizationProfile
Parent: fr-core-organization
Id: as-organization
Title: "AS Organization Profile"
Description: "Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS)."

* identifier.type ^short = "Type d’identifiant national de l’organisation"

// Identifiants - slicing repris de FRCoreOrganizationProfile 2.1.0 (déplacé dans FRCoreOrganizationEtablissementProfile en 2.2.0)
* identifier.use from IdentifierUse (required)
* identifier.type from FRCoreValueSetOrganizationIdentifierType (extensible)

* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.discriminator[1].type = #pattern
* identifier ^slicing.discriminator[1].path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

* identifier contains
    idNatSt 0..* and
    siren 0..* and
    siret 0..* and
    finess 0..* and
    rppsRang 0..*

* identifier[idNatSt] ^short = "Identifiant national de structure, à privilégier. Identifiant idNat_Struct délivré par une autorité d’enregistrement tel que défini dans l’Annexe Transverse Source des données métier pour les professionnels et les structures."
* identifier[idNatSt].use = #official
* identifier[idNatSt].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#IDNST
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value ^short = "Identification nationale de la structure préfixée : 0 + ADELI rang, 1 + Numéro FINESS Etablissement, 2 + Numéro SIREN, 3 + Numéro SIRET, 4 + RPPS rang ou identifiant technique de la structure."

* identifier[siren] ^short = "Identifiant SIREN (9 chiffres)"
* identifier[siren].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#SIREN
* identifier[siren].system = "https://sirene.fr"

* identifier[siret] ^short = "Identifiant SIRET (14 chiffres)"
* identifier[siret].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#SIRET
* identifier[siret].system = "https://sirene.fr"

* identifier[finess] ^short = "Identifiant FINESS Entité Géographique (EG) ou Entité Juridique (EJ)"
* identifier[finess].type.coding.code ^short = "FINEJ | FINEG"
* identifier[finess].type.coding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[finess].system = "https://finess.esante.gouv.fr"

* identifier[rppsRang] ^short = "RPPS rang (11 chiffres RPPS + 2 ou 3 chiffres RANG)"
* identifier[rppsRang].type = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203#RPPSRG
* identifier[rppsRang].system = "https://rppsrang.esante.gouv.fr"

// Organization.active
* active ^short = "La ressource est-elle active ? (active | inactive). true par défaut; false pour les structures supprimées."

// Organization.name
* name ^short = "Raison sociale de la structure (Synonyme : raisonSociale, dénomination)."

// Organization.alias
* alias ^short = "Enseigne commerciale de la structure (Synonyme : complementRaisonSociale)."

/* champ d'activite de la structure */
// Slices de FrCoreOrganizationProfile 2.1.0 (supprimées en 2.2.0, redéfinies ici)
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open

* type contains
    organizationType 0..1 and
    secteurActiviteRASS 0..1 and
    categorieEtablissementRASS 0..1 and
    statutJuridiqueINSEE 0..1 and
    sphParticipation 0..1 and
    typeEtablissement 0..1

// organizationType
* type[organizationType] from FRCoreValueSetOrganizationType (required)
* type[organizationType].coding 1..1
* type[organizationType].coding.system 1..
* type[organizationType] ^short = "Type de structure \r\nEntité Juridique : LEGAL-ENTITY; \r\nEntité Géographique : GEOGRAPHICAL-ENTITY"
* type[organizationType].extension contains as-ext-organization-types named as-ext-organization-types 1..1
* type[organizationType].extension[as-ext-organization-types].valueCode = #organizationType

// secteurActiviteRASS
* type[secteurActiviteRASS] from $JDV-J101-SecteurActivite-RASS (required)
* type[secteurActiviteRASS] ^short = "Secteurs d'activité des établissements avec la même activité dans le RASS"
* type[secteurActiviteRASS].coding 1..1
* type[secteurActiviteRASS].coding.system 1..

// categorieEtablissementRASS
* type[categorieEtablissementRASS] from $JDV-J129-CategorieEtablissement-RASS (required)
* type[categorieEtablissementRASS] ^short = "Catégorie d'établissement du RASS"
* type[categorieEtablissementRASS].coding 1..1
* type[categorieEtablissementRASS].coding.system 1..


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
* address ^short = "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique."
* address only AsAddressExtendedProfile

// telecommunication
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.use ^comment = "« old » si les coordonnées de structure ont une date de fin"

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator[0].type = #value
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
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..1 and
    AsOrganizationPharmacyLicenceExtension named as-ext-organization-pharmacy-licence 0..* and
 	AsOrganizationPricingModelExtension named as-ext-organization-pricing-model 0..1 and
	AsOrganizationClosingTypeExtension named as-ext-organization-closing-type 0..1 and
	AsOrganizationBudgetTypeExtension named as-ext-organization-budget-type 0..1 and
	AsOrganizationAuthorizationDeadlineExtension named as-ext-organization-authorization-deadline 0..1
	

// digitalCertificate
* extension[as-ext-digital-certificate] ^short = "[DR] : certificat. Données descriptives du moyen d’identification par certificat."

// numeroLicence pour les officines
* extension[as-ext-organization-pharmacy-licence] ^short = "Numéro de la licence d'exploitation d’une officine (Synonyme : numeroLicence)."


Mapping:  AsOrganizationToMOSEJ
Source:   AsOrganizationProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-organization-to-mos-ej
Title:    "AsOrganization to MOS - EJ"
* -> "EntiteJuridique"
* identifier[finess] -> "EntiteJuridique.numFiness"
* identifier[siren] -> "EntiteJuridique.numSiren"
* identifier[idNatSt] -> "EntiteJuridique.idNat_struct"
* identifier[rppsRang] -> "EntiteGeographique.identifiantEJ"
* extension[as-ext-organization-pharmacy-licence] -> "EntiteJuridique.numeroLicenceOfficine"
* name  -> "EntiteJuridique.raisonSociale"
* alias -> "EntiteJuridique.raisonSocialeLongue"
* type[statutJuridiqueINSEE] -> "EntiteJuridique.statutJuridique"
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
* identifier[siret] -> "EntiteGeographique.numSiret"
* identifier[idNatSt] -> "EntiteGeographique.idNat_struct"
* identifier[rppsRang] -> "EntiteGeographique.identifiantEG"

* active -> "EntiteGeographique.actof"
* name -> "EntiteGeographique.denominationEG"
* alias -> "EntiteGeographique.denominationEGLongue"

* extension[as-ext-organization-pricing-model] -> "EntiteGeographique.modeFixationTarifaire"
* extension[as-ext-organization-budget-type] -> "EntiteGeographique.natureEtablissement"
* extension[as-ext-organization-authorization-deadline] -> "EntiteGeographique.dateAutorisation"
* extension[as-ext-organization-closing-type] -> "EntiteGeographique.typeFermeture"
* extension[usePeriod].valuePeriod.start -> "EntiteGeographique.dateOuverture"
* extension[usePeriod].valuePeriod.end -> "EntiteGeographique.dateFermeture"

* type[secteurActiviteRASS] -> "EntiteGeographique.secteurActivite"
* type[categorieEtablissementRASS] -> "EntiteGeographique.categorieEtablissement"
* type[statutJuridiqueINSEE] -> "EntiteGeographique.statutJuridique"
* type[sphParticipation] -> "EntiteGeographique.modaliteParticipationSPH"
* type[typeEtablissement] -> "EntiteGeographique.typeEtablissement"

* active -> "EntiteGeographique.actif"
* address -> "EntiteGeographique.adresseEG"
* telecom -> "EntiteGeographique.telecommunication"
* telecom[mailbox-mss] -> "EntiteJuridique.boiteLettreMSS"

* partOf -> "EntiteGeographique.EntiteJuridique"
