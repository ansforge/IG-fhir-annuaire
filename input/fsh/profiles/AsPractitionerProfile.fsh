Profile: 		ASPractitionerProfile
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
* identifier ^short = "Une instance par identifiant (RPPS, ADELI, idNat_PS…)"

// Practitioner.identifier.type
* identifier.type ^short = "Type d’identifiant national de la personne physique."
* identifier.type ^comment = "Synonyme : typeIdNat_PP,\r\nLes codes ADELI, RPPS et IDNPS proviennent du system  http://interopsante.org/fhir/CodeSystem/fr-v2-0203 ; Les codes 1, 3, 4, 5, 6 proviennent du system : https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne"
* identifier.type from $fr-practioner-identifier-type (extensible)

// Practitioner.identifier.system
* identifier.system ^short = "le système de l'identifiant dépend de la source d'où provient l'identifiant."
* identifier.system ^comment = "« http://rpps.fr» si l’instance correspond à un identifiant RPPS ; « http://adeli.fr» si l’instance correspond à un identifiant ADELI ; « urn:oid:1.2.250.1.71.4.2.1 » si l’instance correspond à l’identification nationale PP (idNat_PS) ; « urn:oid:1.2.250.1.213.1.6.4.2 » si l’instance correspond à une identification locale : Id Cabinet ADELI/N° de registre, FINESS/N° de registre, SIREN/N° de registre, SIRET/N° de registre ou Id Cabinet RPPS/N° de registre"

// Practitioner.identifier.value
* identifier.value ^comment = "Synonyme : idPP\r\n Personne/Identifiant PP si l’instance correspond à un identifiant RPPS ou ADELI, sinon Personne/identification nationale PP."
* identifier.value ^short = "Identifiant national de la personne physique."

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
* name.prefix ^short = "Civilité de la personne physique (Synonyme : civilite)."

// Practitioner.gender
* gender MS
* gender ^short = "[Donnée restreinte] : Sexe administratif de la personne physique, au sens de l'état civil, masculin ou féminin (Synonyme : sexeAdministratif)."
// * gender from $TRE-R249-Sexe (required) 

// Practitioner.birthDate
* birthDate MS
* birthDate ^short = "[Donnée restreinte] : Date de naissance de la personne, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles (Synonyme : dateNaissance)."

// lieuNaissance
* extension[as-ext-practitioner-birth-place] ^short = "[Donnée restreinte] : Code officiel géographique (COG) de la commune (France) ou du pays (Synonyme : lieuNaissance)."

// nationalite
* extension[as-ext-practitioner-nationality] ^short = "[Donnée restreinte] : Nationalité de la personne (Synonyme : nationalite)."
// dateDeces
* extension[as-ext-practitioner-deceased-date-time] ^short = "[Donnée restreinte] : Date de décès de la personne (Synonyme : dateDeces)."

// telecommunication 
* telecom MS
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^comment = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// adresseCorrespondance
* address MS
* address ^short = "[Donnée restreinte] : Adresse(s) de correspondance permettant de contacter le professionnel (Synonyme : adresseCorrespondance)."
* address only AsAddressExtendedProfile

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator.type = #profile
* telecom ^slicing.discriminator.path = "$this.resolve()" // Le discriminator de cet élément est la conformité au profil mailbox-mss.
* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "Les BALs MSS de type PER rattachées seulement à l'identifiant du professionnel de Santé."
* telecom[mailbox-mss] ^comment = "Synonyme : boiteLettreMSS"

// Practitioner.photo
* photo MS

* qualification MS

// langueParlee
* communication MS
* communication ^short = "Langue parlée (Synonyme : langueParlee)."
* communication only AsCodeableConceptTimedProfile
* communication from $JDV_J82-Langue-RASS (required)


* qualification.code.coding contains degreeType 0..* MS
* qualification.code.coding[degreeType] from $JDV-J81-TypeDiplome-RASS (required)
* qualification.code.coding[degreeType] ^short = "Type de diplôme, par exemple : DE, DES, CES, etc. (typeDiplome)"