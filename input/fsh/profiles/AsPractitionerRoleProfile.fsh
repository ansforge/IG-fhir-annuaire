Profile: 		AsPractitionerRoleProfile
Parent: 		fr-core-practitioner-role
Id: 			as-practitionerrole
Title:			"AS PractitionerRole Profile"
Description: 	"Profil générique créé à partir de FrPractitionerRoleExercice dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel."


/* extensions */
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
	AsPractitionerRoleContracted named as-ext-practitionerrole-contracted 0..1 and // secteur de conventionnement
	AsPractitionerRoleHasCas named as-ext-practitionerrole-hascas 0..1 and // Option pratique tarifaire maîtrisée
	AsPractitionerRoleVitaleAccepted named as-ext-practitionerrole-vitale-accepted 0..1 // Indicateur carte Vitale acceptée

/* PractitionerRole.identifier */
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system value"

// Contains rule
* identifier contains idSituationExercice 0..*

// PractitionerRole.identifier.system
* identifier[idSituationExercice] ^short = "Identifiant d'activité propre au RPPS"
* identifier[idSituationExercice].system = "https://rpps.esante.gouv.fr"


// PractitionerRole.active
* active ^short = "La situation d'exercice est-elle active? (active | inactive)\r\ntrue par défaut; false pour les situations d’exercices supprimées"

/* PractitionerRole.period */ 
* period ^short = "Période d'activité de la situation d'exercice."

// dateDebutActivite
* period.start ^short = "[Donnée restreinte] : Date de début de l’activité correspondant à la date d’installation en cabinet ou à la date d’embauche du salarié (dateDebutActivite)."

// dateFinActivite
* period.end ^short = "[Donnée restreinte] : Date de fin de l’activité (dateFinActivite)."

// PractitionerRole.practitioner
* practitioner ^short = "Référence permettant de lier l’exercice professionnel et la situation d'exercice à un professionnel (Practitioner)."
* practitioner only Reference(as-practitioner)

// PractitionerRole.organization
* organization ^short = "Référence vers l’EG ou EJ de rattachement de la situation d’exercice (Organization)"
* organization only Reference(as-organization)



// Slicing au niveau de PractitionerRole.code
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "$this"
* code ^slicing.rules = #open
* code contains
    genreActivite 0..1 and
    modeExercice 0..1 and
    typeActiviteLiberale 0..1 and
    statutProfessionnelSSA 0..1 and
    statutHospitalier 0..1 and
    fonction 0..1 and
    metierPharmacien 0..* // ou 0..2 ?



// Slice 6 : genre activite
* code[genreActivite] ^short = "Le genre identifiant une activité qui nécessite l’application de règles de gestion spécifiques (Synonyme: genreActivite)."
* code[genreActivite] from $JDV-J94-GenreActivite-RASS (required)

// Slice 7 : mode exercice  
* code[modeExercice] ^short = "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel (Synonyme: modeExercice)."
* code[modeExercice] from $JDV-J95-ModeExercice-RASS (required)

// Slice 8 : type activite liberale
* code[typeActiviteLiberale] from $JDV-J96-TypeActiviteLiberale-RASS (required)
* code[typeActiviteLiberale] ^short = "Type d’activité libérale, par exemple: Cabinet; Secteur privé à l'hôpital (Synonyme: typeActiviteLiberale)."

// Slice 9 : statut des PS du SSA  
* code[statutProfessionnelSSA] ^short = "Statut du professionnel du Service de santé des armées (Synonyme: statutProfessionnelSSA)."
* code[statutProfessionnelSSA] from $JDV-J97-StatutProfessionnelSSA-RASS (required)

// Slice 10 : statut hospitalier 
* code[statutHospitalier] ^short = "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé (Synonyme: statutHospitalier)."
* code[statutHospitalier] from $JDV-J98-StatutHospitalier-RASS (required)

// Slice 11 : fonction
* code[fonction] ^short = "role : Fonction du professionnel au sein de la structure d’exercice."
* code[fonction] from $JDV-J108-EnsembleFonction-RASS (required)

// Slice 14 : section/sous-section tableau pharmaciens 
* code[metierPharmacien] ^short = "Section/Sous-section du tableau de l’Ordre des pharmaciens (CNOP) (sectionOrdrePharmacien/sousSectionOrdrePharmacien)." 
* code[metierPharmacien] from $JDV-J73-MetierPharmacien-RASS (required)

// telecom - PractitionerRole.telecom
* telecom only $FrContactPoint

// boiteLettreMSS
* telecom ^slicing.rules = #open
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system" 
* telecom ^slicing.discriminator[1].type = #exists
* telecom ^slicing.discriminator[1].path = "extension('https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type')"

* telecom contains mailbox-mss 0..*
* telecom[mailbox-mss] only as-mailbox-mss
* telecom[mailbox-mss] ^short = "BALs MSS de type PER rattachés à l'identifiant du professionnel de santé  ainsi qu'au lieu de sa situation d'exercice (BoiteLettreMSS)."



Mapping:  AsPractitionerRoleToMOSSituationExercice
Source:   AsPractitionerRoleProfile
Target:   "https://mos.esante.gouv.fr"
Id:       as-practitioner-role-to-mos-situation-exercice
Title:    "AsPractitionerRoleProfile to MOS - SituationExercice"
* -> "SituationExercice"
* code[fonction] -> "SituationExercice.role"
* code[modeExercice] -> "SituationExercice.modeExercice"
* code[genreActivite] -> "SituationExercice.genreActivite"
* code[statutHospitalier] -> "SituationExercice.statutHospitalier"
* code[metierPharmacien] -> "SituationExercice.metierPharmacien"
* code[typeActiviteLiberale] -> "SituationExercice.typeActiviteLiberale"
* code[statutProfessionnelSSA] -> "SituationExercice.statutPS_SSA"
* period.start -> "SituationExercice.dateDebutActivite"
* period.end -> "SituationExercice.dateFinActivite"

* telecom -> "SituationExercice.telecommunication"
* telecom.system -> "SituationExercice.telecommunication.canal"
* telecom.value -> "SituationExercice.telecommunication.adresseTelecom"
* telecom.use -> "SituationExercice.telecommunication.utilisation"

* telecom[mailbox-mss] -> "SituationExercice.boiteLettresMSS"