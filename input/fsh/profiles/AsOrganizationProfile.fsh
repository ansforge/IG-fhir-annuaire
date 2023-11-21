Profile: AsOrganizationProfile
Parent: FrOrganization
Id: as-organization
Title: "AS Organization Profile"
Description: "Profil créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le fichier national des établissements sanitaires et sociaux (FINESS) ou dans le Système Informatique pour le Répertoire des Entreprises et de leurs Établissements (SIRENE) dédié aux entreprises, associations et organismes du secteur public."

/* profils references */
* partOf only Reference(FrOrganization or AsOrganizationProfile)

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS


/* donnees metiers */
// Organization.identifier
* identifier MS 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"

// Contains rule
* identifier contains idNatSt 0..1 and sirene 0..* and finess 0..* and adeliRang 0..* and rppsRang 0..*

* identifier[idNatSt] ^short = "Identifiant idNat_Struct délivré par une autorité d'enregistrement tel que défini dans l'Annexe Transverse Source des données métier pour les professionnels et les structures."
* identifier[idNatSt].use = #official
* identifier[idNatSt].type = http://interopsante.org/CodeSystem/fr-v2-0203#IDNST
* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"
* identifier[idNatSt].value ^short = "Identification nationale de la structure préfixé : 0 + ADELI rang, 1 + Numéro FINESS Etablissement, 2 + Numéro SIREN, 3 + Numéro SIRET, 4 + RPPS rang ou identifiant technique de la structure."

* identifier[sirene] ^short = "Identifiant SIREN (9 chiffres) ou SIRET (14 chiffres)"
* identifier[sirene].type.coding.code ^short = "SIREN | SIRET"
* identifier[sirene].type.coding.system = "http://interopsante.org/CodeSystem/fr-v2-0203"
* identifier[sirene].system = "http://sirene.fr"

* identifier[finess] ^short = "Identifiant FINESS Entité Géographique (EG) ou Entité Juridique (EJ)"
* identifier[finess].type.coding.code ^short = "FINEJ | FINEG"
* identifier[finess].type.coding.system = "http://interopsante.org/CodeSystem/fr-v2-0203"
* identifier[finess].system = "http://finess.esante.gouv.fr"

* identifier[adeliRang] ^short = "Identifiant ADELI rang (9 chiffres ADELI + 2 chiffres RANG)"
* identifier[adeliRang].type = http://interopsante.org/CodeSystem/fr-v2-0203#INTRN
* identifier[adeliRang].system = "https://adelirang.esante.gouv.fr"

* identifier[rppsRang] ^short = "RPPS rang (11 chiffres RPPS + 2 chiffres RANG)"
* identifier[rppsRang].type = http://interopsante.org/CodeSystem/fr-v2-0203#INTRN
* identifier[rppsRang].system = "https://rppsrang.esante.gouv.fr"

// Organization.active
* active MS
* active ^short = "La ressource est-elle active? (active | inactive)"
* active ^comment = "true par défaut; false pour les structures supprimées."

// Organization.name
* name MS
* name ^short = "Raison sociale de la structure (Synonyme : raisonSociale, dénomination)."

// Organization.alias
* alias MS
* alias ^short = "Enseigne commerciale de la structure (Synonyme : complementRaisonSociale)."

/* champ d'activite de la structure */
// Slice deja defini dans FrOrganization
* type MS
* type contains
    activiteINSEE 0..1 and
    statutJuridiqueINSEE 0..1 and 
    sphParticipation 0..1 and
	typeEtablissement 0..1

// organizationType - slice deja existant 
* type[organizationType] ^sliceName = "organizationType"
* type[organizationType] ^short = "Type de structure \r\nEntité Juridique : LEGAL-ENTITY; \r\nEntité Géographique : GEOGRAPHICAL-ENTITY"

// activiteINSEE
* type[activiteINSEE] from $JDV-J99-InseeNAFrav2Niveau5-RASS (required)
* type[activiteINSEE] ^short = "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2).\r\nPlus précisément, on distingue le code APET pour les EG (Synonyme : codeAPEN)."

// statutJuridiqueINSEE
* type[statutJuridiqueINSEE] from $JDV-J100-FinessStatutJuridique-RASS (required)
* type[statutJuridiqueINSEE] ^short = "Statut juridique FINESS qui caractérise la situation juridique de la personne morale (Synonyme : statutJuridiqueINSEE)."

// modaliteParticipationSPH
* type[sphParticipation] from $JDV-J162-ESPIC-RASS (required)
* type[sphParticipation] ^short = "Modalités de participation au service public hospitalier (Synonyme : modaliteParticipationSPH)."

// typeEtablissement
* type[typeEtablissement] ^short = "Le type d’établissement détermine si c'est un établissement principal ou secondaire."


// adresse
* address MS
* address ^short = "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique."
* address only AsAddressExtendedProfile

// telecommunication
* telecom MS
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^comment = "https://www.hl7.org/fhir/valueset-contact-point-system.html"
* telecom.use ^comment = "« old » si les coordonnées de structure ont une date de fin"

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*

* telecom[mailbox-mss] MS
* telecom[mailbox-mss] only as-mailbox-mss

// lien EG/EJ
* partOf ^short = "Référence vers la structure de rattachement (lien EG/ EJ)."
* partOf ^comment = "Chaque entité geographique et ratachée à une entité juridique. C'est l'id de la ressource de l'entité juridique à laquelle est ratachée la structure qui est remontée dans l'element de référence partOf de l'entité géographique."

// periode d'activite
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
