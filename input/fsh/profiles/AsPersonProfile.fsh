Profile: 		AsPersonProfile
Parent: 		Person
Id: 			as-person
Title:			"AS Person Profile"
Description: 	"Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes)."

/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    AsPersonBirthPlaceExtension named as-ext-person-birth-place 0..1 and
    AsPersonDeceasedDateTimeExtension named as-ext-person-deceased-date-time 0..1


// Person.active
* active ^short = "La ressource est-elle active? active | inactive. true  par défaut; false pour les professionnels supprimés"

/* Person.name */
* name only $FrHumanName
* name ^short = "Nom issu de l’état-civil."
// nomFamille/nomUsage
* name.family ^short = "Le nom civil (également nommé nom de naissance ou nom de famille)."
// prenom/prenomUsuel
* name.given ^short = "Prénom(s) civil(s) déclarés à la naissance du professionnel."
// HumanName.prefix
* name.prefix ^short = "Civilité du professionnel (civilite)."

// Person.gender
* gender ^short = "Sexe administratif du professionnel, au sens de l'état civil, masculin ou féminin (MOS : sexeAdministratif)."

// Person.birthDate
* birthDate ^short = "Date de naissance du professionnel, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles (MOS : dateNaissance)."

// telecommunication 
* telecom ^short = "[DR] : telecommunication"
* telecom only $FrContactPoint
* telecom.extension[emailType] 0..0 // L'adresse email de la personne physique est uniquement son adresse personnelle

* telecom ^short = "Différentes instances pour les téléphones, la télécopie et l’adresse mail."
* telecom.system ^short = "« phone » pour Téléphone et Téléphone 2 ; « fax » pour Télécopie ; « email » pour adresse e-mail"
* telecom.use ^comment = "« old » si les coordonnées de correspondance ont une date de fin"



/* profils references */
* link ^slicing.discriminator.type = #profile
* link ^slicing.discriminator.path = "target"
* link ^slicing.rules = #open
* link contains as-practitioner-exercice-professionnel 0..* 
* link[as-practitioner-exercice-professionnel].target only Reference(as-practitioner)


Mapping:  AsPersonToMOSPersonnePhysique
Source:   AsPersonProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-person-to-mos-personne-physique
Title:    "AsPersonProfile to MOS - PersonnePhysique"
* -> "PersonnePhysique"
* extension[as-ext-person-deceased-date-time] -> "PersonnePhysique.dateDeces"
* extension[as-ext-person-birth-place] -> "PersonnePhysique.lieuNaissance"
* name.prefix -> "PersonnePhysique.civilite"
* name.family -> "PersonnePhysique.nomFamille"
* name.given -> "PersonnePhysique.prenom"
* gender -> "PersonnePhysique.sexeAdministratif"
* birthDate -> "PersonnePhysique.dateNaissance"
