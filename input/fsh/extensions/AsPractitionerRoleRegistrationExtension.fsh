Extension: 		AsPractitionerRoleRegistrationExtension
Id: 			as-ext-practitionerrole-registration
Title:			"AS PractitionerRole Registration Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si \"isFirst = true\"."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* . ^short = "Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donné."
* . ^comment = "Synonymes RPPS : InscriptionOrdre"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* extension contains
    registeringOrganization 0..1 and
    registeringOrganizationDetail 0..1 and
    period 0..1 and
    status 0..1 and
    hostingDepartment 0..1 and
    isFirst 0..1 

// ordre
* extension[registeringOrganization] ^comment = "Synonyme : ordre, autorité d'enregistrement"
* extension[registeringOrganization] ^short = "Instance de régulation d'une profession de santé réglementée."
* extension[registeringOrganization].value[x] only CodeableConcept
* extension[registeringOrganization].valueCodeableConcept from $JDV-J83-AutoriteEnregistrement-RASS (required)
* extension[registeringOrganization].valueCodeableConcept ^binding.description = "Liste des autorités d'enregistrement."

// conseilDepartemental
* extension[registeringOrganizationDetail] ^comment = "Synonyme : conseilDepartemental"
* extension[registeringOrganizationDetail] ^short = "Département du Conseil départemental."
* extension[registeringOrganizationDetail].value[x] only CodeableConcept
* extension[registeringOrganizationDetail].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)
* extension[registeringOrganizationDetail].valueCodeableConcept ^binding.description = "Liste des départements (outre-mer et Monaco inclus)."

// periodValidite
* extension[period] ^comment = "Synonyme : periodValidite"
* extension[period] ^short = "Période durant laquelle la personne est autorisée à exercer la profession pour laquelle elle a été inscrite."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^comment = "Synonyme : dateDebutInscription"
* extension[period].valuePeriod.start ^short = "Date d’inscription de la personne au tableau de l’ordre."
* extension[period].valuePeriod.end ^comment = "Synonyme MOS : dateRadiation"
* extension[period].valuePeriod.end ^short = "Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite."
// statutInscription
* extension[status] ^comment = "Synonyme : statutInscription"
* extension[status] ^short = "Information indiquant l’avancement du traitement du dossier d'inscription de la personne."
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $JDV-J85-StatutInscription-RASS (required)
* extension[status].valueCodeableConcept ^binding.description = "Liste des statuts de l'inscription."

// departementPremierReferencementAE
* extension[hostingDepartment] ^comment = "Synonyme : departementPremierReferencementAE"
* extension[hostingDepartment] ^short = "Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre »."
* extension[hostingDepartment].value[x] only CodeableConcept
* extension[hostingDepartment].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)
* extension[hostingDepartment].valueCodeableConcept ^binding.description = "Liste des départements (outre-mer et Monaco inclus)."

// indicateurPremiereInscription
* extension[isFirst] ^short = "Indicateur de la première inscription."
* extension[isFirst] ^comment = "Si 1ère inscription => practitionerRole-registration.isFirst= « true »\r\nSinon, practitionerRole-registration.isFirst= « false »"	
* extension[isFirst].value[x] only boolean