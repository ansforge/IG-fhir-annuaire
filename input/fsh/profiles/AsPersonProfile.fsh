Profile: 		AsPersonProfile
Parent: 		Person
Id: 			as-person
Title:			"AS Person Profile"
Description: 	"Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes)."

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
    AsPersonNationalityExtension named as-ext-person-nationality 0..* MS and
    AsPersonBirthPlaceExtension named as-ext-person-birth-place 0..1 MS and
    AsPersonDeceasedDateTimeExtension named as-ext-person-deceased-date-time 0..1 MS
// L'extension nationality n'existe pas pour la ressource Person.

// Person.active
* active MS
* active ^short = "La ressource est-elle active? active | inactive. true  par défaut; false pour les professionnels supprimés"

/* Person.name */
* name MS
* name only $FrHumanName
* name ^short = "Nom issu de l’état-civil."
// nomFamille/nomUsage
* name.family ^short = "Le nom civil  (également nommé nom de naissance ou nom de famille)."
// prenom/prenomUsuel
* name.given ^short = "Prénom(s) civil déclarés à la naissance du professionnel."
// HumanName.prefix
* name.prefix ^short = "Civilité du professionnel (civilite)."

// Person.gender
* gender MS
* gender ^short = "Sexe administratif du professionnel, au sens de l'état civil, masculin ou féminin (MOS : sexeAdministratif)."

// Person.birthDate
* birthDate MS
* birthDate ^short = "Date de naissance du professionnel, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles (MOS : dateNaissance)."

// telecommunication 
* telecom MS
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom.extension[emailType] 0..0 // L'adresse email de la personne physique est uniquement son adresse personelle

* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^short = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"

// Person.photo
* photo MS

/* profils references */
* link ^slicing.discriminator.type = #profile
* link ^slicing.discriminator.path = "target"
* link ^slicing.rules = #open
* link contains as-practitioner-exercice-professionnel 0..* MS
* link[as-practitioner-exercice-professionnel].target only Reference(as-practitioner)


Mapping:  AsPersonToMOSPersonnePhysique
Source:   AsPersonProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-person-to-mos-personne-physique
Title:    "AsPersonProfile to MOS - PersonnePhysique"
* -> "PersonnePhysique"
* extension[as-ext-person-deceased-date-time] -> "PersonnePhysique.dateDeces"
* extension[as-ext-person-birth-place] -> "PersonnePhysique.lieuNaissance"
* extension[as-ext-person-nationality] -> "PersonnePhysique.paysNationalite"
* name.prefix -> "PersonnePhysique.civilite"
* name.family -> "PersonnePhysique.nomFamille"
* name.family -> "PersonnePhysique.nomUsage"
* name.given -> "PersonnePhysique.prenom"
* name.given -> "PersonnePhysique.prenomUsuel"
* gender -> "PersonnePhysique.sexeAdministratif"
* language -> "PersonnePhysique.langueParlee"
* birthDate -> "PersonnePhysique.dateNaissance"
