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
    AsPractitionerNationalityExtension named as-ext-practitioner-nationality 0..1 MS and
    AsPractitionerAuthorizationExtension named as-ext-frpractitioner-authorization 0..* MS and
    AsPractitionerBirthPlaceExtension named as-ext-practitioner-birth-place 0..1 MS and
    AsPractitionerDeceasedDateTimeExtension named as-ext-practitioner-deceased-date-time 0..* MS

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
* active ^short = "Le professionnel est-il actif? active | inactive. true  par défaut; false pour les professionnels supprimés"

/* Practitioner.name */
* name MS
* name only $FrHumanName
* name ^short = "Une instance pour le nom d’usage et une instance pour le nom issu de l’état-civil. « usual » pour nom et prénom d’usage (Personne) ; « official » pour nom de famille et prénoms (Etat-civil)"
// nomFamille/nomUsage
* name.family ^short = "[Donnée restreinte] : Le nom de famille (également nommé nom de naissance) ou le nom d'usage de la personne."
// prenom/prenomUsuel
* name.given ^short = "[Donnée restreinte] : Prénom(s) déclarés à sa naissance de la personne."
// HumanName.prefix
* name.prefix ^binding.strength = #required
* name.prefix ^short = "Civilité de la personne physique (civilite)."

// Practitioner.gender
* gender MS
* gender ^short = "[Donnée restreinte] : Sexe administratif de la personne physique, au sens de l'état civil, masculin ou féminin (sexeAdministratif)."
// * gender from $TRE-R249-Sexe (required) 

// Practitioner.birthDate
* birthDate MS
* birthDate ^short = "[Donnée restreinte] : Date de naissance de la personne, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles (dateNaissance)."

// lieuNaissance
* extension[as-ext-practitioner-birth-place] ^short = "[Donnée restreinte] : Code officiel géographique (COG) de la commune (France) ou du pays (lieuNaissance)."

// nationalite
* extension[as-ext-practitioner-nationality] ^short = "[Donnée restreinte] : Nationalité de la personne (nationalite)."
// dateDeces
* extension[as-ext-practitioner-deceased-date-time] ^short = "[Donnée restreinte] : Date de décès de la personne (dateDeces)."

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

// Practitioner.photo
* photo MS


* qualification MS

// langueParlee
* communication MS
* communication ^short = "Langue parlée (langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)


* qualification.code.coding contains degreeType 0..* MS
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^short = "Type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"


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