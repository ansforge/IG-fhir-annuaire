Extension: 		AsPractitionerRoleSmartCardExtension
Id: 			as-ext-practitionerrole-smartcard
Title:			"AS PractitionerRole Smart Card Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^short = "CarteProfessionnel"
* . ^definition = "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel."
* . ^comment = "La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même, un professionnel exerçant simultanément deux professions a deux cartes."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    type 0..1 and
    number 0..1 and
    period 0..1 and
    cancellationDate 0..1 and
    date 0..*

// 	typeCarte
* extension[type] ^short = "typeCarte"
* extension[type] ^definition = "Type de carte de professionnel (CPx)"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J128-TypeCarte-RASS (extensible)

// numeroCarte
* extension[number] ^short = "numeroCarte"
* extension[number] ^definition = "Numéro de carte du professionnel."
* extension[number].value[x] only string

// periodValidite
* extension[period] ^short = "periodValidite"
* extension[period] ^definition = "Période de validité de la carte."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDebutValidite"
* extension[period].valuePeriod.start ^definition = "Date de début de validité de la carte"
* extension[period].valuePeriod.end ^short = "dateFinValidite"
* extension[period].valuePeriod.end ^definition = "Date de fin de validité de la carte"

// dateOpposition
* extension[cancellationDate] ^short = "dateOpposition"
* extension[cancellationDate] ^definition = "Date de mise en opposition de la carte."
* extension[cancellationDate] ^comment = "Cette opposition implique la révocation des certifications embarquées dans la carte."
* extension[cancellationDate].value[x] only dateTime