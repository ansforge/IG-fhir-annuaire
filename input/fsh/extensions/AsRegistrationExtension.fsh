Extension: 		AsRegistrationExtension
Id: 			as-ext-registration
Title:			"AS Registration Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si \"isFirst = true\". Ces données sont uniquement accessibles en accès restreint."

* ^context.type = #element
* ^context.expression = "Practitioner"

* . ^short = "InscriptionOrdre : Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donné."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    registeringOrganization 0..1 and
    registeringOrganizationDetail 0..1 and
    period 0..1 and
    status 0..1 and
    hostingDepartment 0..1 and
    isFirst 0..1 

// ordre
* extension[registeringOrganization] ^short = "Instance de régulation d'une profession de santé réglementée (ordre, autorité d'enregistrement)."
* extension[registeringOrganization].value[x] only CodeableConcept
* extension[registeringOrganization].valueCodeableConcept from $JDV-J83-AutoriteEnregistrement-RASS (required)

// conseilDepartemental
* extension[registeringOrganizationDetail] ^short = "conseilDepartemental : Département du Conseil départemental."
* extension[registeringOrganizationDetail].value[x] only CodeableConcept
* extension[registeringOrganizationDetail].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)

// periodValidite
* extension[period] ^short = "Période durant laquelle la personne est autorisée à exercer la profession pour laquelle elle a été inscrite."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDebutInscription : Date d’inscription de la personne au tableau de l’ordre."
* extension[period].valuePeriod.end ^short = "dateRadiation : Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite."
// statutInscription
* extension[status] ^short = "statutInscription : Information indiquant l’avancement du traitement du dossier d'inscription de la personne."
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $JDV-J85-StatutInscription-RASS (required)

// departementPremierReferencementAE
* extension[hostingDepartment] ^short = "departementPremierReferencementAE : Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre »."
* extension[hostingDepartment].value[x] only CodeableConcept
* extension[hostingDepartment].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)

// indicateurPremiereInscription
* extension[isFirst] ^short = "Indicateur de la première inscription.\nSi 1ère inscription => practitionerRole-registration.isFirst= « true »\r\nSinon, practitionerRole-registration.isFirst= « false »"
* extension[isFirst].value[x] only boolean