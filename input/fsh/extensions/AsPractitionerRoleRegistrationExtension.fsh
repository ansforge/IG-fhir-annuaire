Extension: 		AsPractitionerRoleRegistrationExtension
Id: 			as-ext-practitionerrole-registration
Title:			"AS PractitionerRole Registration Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la première inscription si \"isFirst = true\"."

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* . ^short = "InscriptionOrdre"
* . ^definition = "Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donné."
* . ^comment = "Synonymes RPPS : Inscription à ordre"


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
* extension[registeringOrganization] ^short = "ordre"
* extension[registeringOrganization] ^definition = "Instance de régulation d'une profession de santé réglementée."
* extension[registeringOrganization].value[x] only CodeableConcept
* extension[registeringOrganization].valueCodeableConcept from $JDV-J83-AutoriteEnregistrement-RASS (required)
* extension[registeringOrganization].valueCodeableConcept ^binding.description = "Liste des autorités d'enregistrement."
// conseilDepartemental
* extension[registeringOrganizationDetail] ^short = "conseilDepartemental"
* extension[registeringOrganizationDetail] ^definition = "Département du Conseil départemental"
* extension[registeringOrganizationDetail].value[x] only CodeableConcept
* extension[registeringOrganizationDetail].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)
* extension[registeringOrganizationDetail].valueCodeableConcept ^binding.description = "Liste des départements (outre-mer et Monaco inclus)."
// periodValidite
* extension[period] ^short = "periodValidite"
* extension[period] ^definition = "Période durant laquelle la personne est autorisée à exercer la profession pour laquelle elle a été inscrite."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDebutInscription"
* extension[period].valuePeriod.start ^definition = "Date d’inscription de la personne au tableau de l’ordre."
* extension[period].valuePeriod.end ^short = "dateRadiation"
* extension[period].valuePeriod.end ^definition = "Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite."
// statutInscription
* extension[status] ^short = "statutInscription"
* extension[status] ^definition = "Information indiquant l’avancement du traitement du dossier d'inscription de la personne."
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $JDV-J85-StatutInscription-RASS (required)
* extension[status].valueCodeableConcept ^binding.description = "Liste des statuts de l'inscription."
// departementPremierReferencementAE
* extension[hostingDepartment] ^short = "departementPremierReferencementAE"
* extension[hostingDepartment] ^definition = "Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre »."
* extension[hostingDepartment].value[x] only CodeableConcept
* extension[hostingDepartment].valueCodeableConcept from $JDV-J84-DepartementOM-RASS (required)
* extension[hostingDepartment].valueCodeableConcept ^binding.description = "Liste des départements (outre-mer et Monaco inclus)."
// indicateurPremiereInscription
* extension[isFirst] ^short = "indicateurPremiereInscription"
* extension[isFirst] ^definition = "indicateur de la première inscription."
* extension[isFirst].value[x] only boolean
* extension[isFirst] ^comment = "Si 1ère inscription => practitionerRole-registration.isFirst= « true »\r\nSinon, practitionerRole-registration.isFirst= « false »"	