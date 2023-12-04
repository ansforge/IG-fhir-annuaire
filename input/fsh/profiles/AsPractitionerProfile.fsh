Profile: 		AsPractitionerProfile
Parent: 		FrPractitioner
Id: 			as-practitioner
Title:			"AS Practitioner Profile"
Description: 	"Profil créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."

// Data trace
* meta.extension ^slicing.discriminator.type = #value
* meta.extension ^slicing.discriminator.path = "url"
* meta.extension ^slicing.rules = #open
* meta.extension contains as-ext-data-trace named as-ext-data-trace 0..1 MS


/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsRegistrationExtension named as-ext-registration 0..* MS and // inscription ordre
    AsPractitionerAuthorizationExtension named as-ext-frpractitioner-authorization 0..* MS and
    AsSmartCardExtension named as-ext-smartcard 0..* MS and // carte cpx
    AsDigitalCertificateExtension named as-ext-digital-certificate 0..* MS //  certificat
/* Practitioner.identifier */
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"
// Contains rule

* identifier contains idNatPs 0..1 and rpps 0..* and adeli 0..* 
// and identifiantInterne 0..*


* identifier[idNatPs] ^short = "Identifiant national des PS. Cet identifiant est notamment utilisé dans le cadre du DMP et de la CPS. Cet identifiant est préfixé selon source de provenance de l'identifiant (cf Annexe Transverse – Source des données métier pour les professionnels et les structures du CI-SIS.)"

// Practitioner.identifier.type

// Identifiant national des professionels de santé
* identifier[idNatPs].type ^short = "Type d’identifiant national de la personne physique (typeIdNat_PP),\r\nLes codes ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier[idNatPs].type = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#IDNPS
* identifier[idNatPs].system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier[idNatPs].value ^short = "Identifiant national de la personne physique. 0 + ADELI ou 8 + RPPSidPP,\r\n Personne/Identifiant PP si l’instance correspond à un identifiant RPPS ou ADELI, sinon Personne/identification nationale PP."

// Identifiant du Répertoire Partagé des Professionnels intervenant dans le système de Santé (RPPS). Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier[rpps] ^short = "Numéro RPPS (11 chiffres)"
* identifier[rpps].type = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#RPPS
* identifier[rpps].system = "http://rpps.esante.gouv.fr"

// Identifiant ADELI. Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier[adeli] ^short = "Numéro ADELI (9 chiffres)"
* identifier[adeli].type = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#ADELI
* identifier[adeli].system = "http://adeli.esante.gouv.fr"

// // Identifiant interne à portée nationale. Celui-ci peut aussi être inclus dans l'idNatPs.
// * identifier[identifiantInterne] ^short = "Identifiant interne à partée nationale du practicien. L'identifiant interne est composé d'un identifiant local propre à une structure et d'un identifiant national."
// * identifier[identifiantInterne].system 1..1
// * identifier[identifiantInterne].system from as-vs-intern-id-systems (required)
// * identifier[identifiantInterne].system ^short = "Système de l'identifiant parmi les valeurs : finess.local.esante.gouv.fr | siren.local.esante.gouv.fr | siret.local.esante.gouv.fr | rpps.local.esante.gouv.fr | adeli.local.esante.gouv.fr"
// * identifier[identifiantInterne].value ^short = "Valeur de l'identifiant au format xxxxx/yyyyy où xxxxx est l'identifiant finess/siren/siret/rpps/adeli et yyyyy l'identifiant local."

// Practitioner.active
* active MS
* active ^short = "Cette ressource est-elle active?\ntrue  par défaut; false pour  indiquer que la ressource a été supprimés"

/* Practitioner.name */
* name MS
* name only $FrHumanName

* name ^short = "Nom sous lequel exerce le professionnel."

// nomExercice
* name.family MS
* name.family ^short = "Nom sous lequel exerce le professionnel (nomExercice)."

//
* name.given MS
* name.given ^short = "Prénom sous lequel exerce le professionnel (prenom)."

// civiliteExercice
* name.suffix MS
* name.suffix ^short = "Civilité d’exercice du professionnel (civilite)."

// telecommunication 
* telecom MS
* telecom ^short = "[Donnée restreinte] : telecommunication"
* telecom only $FrContactPoint
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// adresseCorrespondance
* address MS
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (adresseCorrespondance)."
* address only AsAddressExtendedProfile

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss].extension contains as-ext-mailbox-mss-metadata named as-mailbox-mss-metadata 0..1 MS
* telecom[mailbox-mss] ^short = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé (boiteLettreMSS)."
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata] ^short = "Les attributs 'responsible' et 'phone' ne sont pas disponibles en accès libre."

// langueParlee
* communication MS
* communication ^short = "Langue parlée (langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)

// Slicing qualification
// ajout dates de validite de l'exercice prof

* qualification MS

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code"
* qualification ^slicing.rules = #open

// ###########
// # DIPLOME #
// ###########
* qualification contains degree 0..*
* qualification[degree] MS
* qualification[degree] ^short = "Diplôme et type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"

* qualification[degree].code.coding ^slicing.discriminator.type = #value
* qualification[degree].code.coding ^slicing.discriminator.path = "system"
* qualification[degree].code.coding ^slicing.rules = #closed

* qualification[degree].code.coding contains degreeType 0..1 and degree 0..1 

// Slice typeDiplome
* qualification[degree].code.coding[degree] MS
* qualification[degree].code.coding[degree] from $JDV-J105-EnsembleDiplome-RASS (required)
* qualification[degree].code.coding[degreeType] MS
* qualification[degree].code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)

// periodValidite
* qualification[degree].period ^short = "[Donnée restreinte] : Période durant laquelle le niveau de formation est actif."
* qualification[degree].period.start ^short = "dateDebut : Date d’obtention du diplôme (dateDiplome)\ncette date est renseignée par l’ordre à la clôture de l’exercice professionnel."
* qualification[degree].period.end ^short = "dateFin : Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées)."

// lieuFormation
* qualification[degree].issuer ^short = "[Donnée restreinte] : Lieu de formation pour l'obtention du diplôme (lieuFormation)."
* qualification[degree].issuer only Reference(AsOrganizationProfile or FrOrganization)

//
* qualification[degree].extension contains AsEducationLevelExtension named as-ext-education-level 0..* MS

// ##############
// # PROFESSION #
// ##############

* qualification contains profession 0..1

* qualification[profession] ^short = "profession : Profession exercée ou future profession de l'étudiant.\r\ncategorieProfessionnelle : Indique si le professionnel exerce sa profession en tant que :\r\nM: Militaire\r\nC: Civil\r\nF: Fonctionnaire\r\nE: Etudiant" 
* qualification[profession].code.coding ^slicing.discriminator.type = #value
* qualification[profession].code.coding ^slicing.discriminator.path = "system"
* qualification[profession].code.coding ^slicing.rules = #closed

* qualification[profession].code.coding contains 
    categorieProfession 0..1 MS and
	profession 0..1 MS

// Slice 1 : Catégorie professionnelle
* qualification[profession].code.coding[categorieProfession] ^short = "Catégorie professionnelle indiqant si le professionnel exerce sa profession en tant que Militaire, Civil, Fonctionnaire ou Etudiant (categorieProfessionnelle)."
* qualification[profession].code.coding[categorieProfession] from $JDV-J89-CategorieProfessionnelle-RASS (required)

// Slice 2 : profession de sante
* qualification[profession].code.coding[profession] ^short = "Profession exercée : de santé (professionSante) TRE G15, du social (professionSocial) TRE R94, à usage de titre professionnel (usagerTitre) TRE R95, ou autre profession (autreProfession) TRE R291"
* qualification[profession].code.coding[profession] from $JDV-J106-EnsembleProfession-RASS (required)
* qualification[profession].period MS
* qualification[profession].period.start ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel exerce cette profession (dateEffetExercice)."
* qualification[profession].period.start ^short = "[Donnée restreinte] : Date à partir de laquelle le professionnel n’exerce plus cette profession (dateFinEffetExercice)."

// ################
// # SAVOIR FAIRE #
// ################

* qualification contains savoirFaire 0..*

* qualification[savoirFaire] ^short = "savoirFAire : Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."

* qualification[savoirFaire].code.coding ^slicing.discriminator.type = #value
* qualification[savoirFaire].code.coding ^slicing.discriminator.path = "system"
* qualification[savoirFaire].code.coding ^slicing.rules = #open


* qualification[savoirFaire].code.coding contains
    typeSavoirFaire 0..1 MS and
    savoirFaire 0..1 MS 

// Slice : typeSavoirFaire
* qualification[savoirFaire].code.coding[typeSavoirFaire] ^short = "Le type de savoir-faire (qualifications/autres attributions).\ntypeSavoirFaire"
* qualification[savoirFaire].code.coding[typeSavoirFaire] from $JDV-J91-TypeSavoirFaire-RASS (required)

// Slice : savoirFaire
* qualification[savoirFaire].code.coding[savoirFaire] ^short = "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97 ou Orientation particulière (Synonyme: orientationParticuliere) G13 ou Activité ponctuelle du professionnel de type expertise (attributionParticuliere) G13."
* qualification[savoirFaire].code.coding[savoirFaire] from $JDV-J107-EnsembleSavoirFaire-RASS (required)

// ValueSet: AsVSInterneIdSystems
// Id: as-vs-intern-id-systems
// Title: "Internal Id Systems VS"
// Description: "Systèmes des identifiants internes"
// * include codes from system https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-intern-id-systems


// CodeSystem: AsCSInterneIdSystems
// Id: as-cs-intern-id-systems
// Title: "Internal Id Systems"
// Description: "Systèmes des identifiants locaux"
// * #finess.interne.esante.gouv.fr "Système de l'identifiant interne FINESS"
// * #siren.interne.esante.gouv.fr "Système de l'identifiant interne SIREN"
// * #siret.interne.esante.gouv.fr "Système de l'identifiant interne SIRET"
// * #rpps.interne.esante.gouv.fr "Système de l'identifiant interne du cabinet RPPS"
// * #adeli.interne.esante.gouv.fr "Système de l'identifiant interne du cabinet ADELI"