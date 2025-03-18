Extension: 		AsSmartCardExtension
Id: 			as-ext-smartcard
Title:			"AS Smart Card Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques."

* ^context.type = #element
* ^context.expression = "Practitioner"

* . ^short = "CarteProfessionnel : Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel.\r\n La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même, un professionnel exerçant simultanément deux professions a deux cartes."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    type 0..1 and
    number 0..1 and
    period 0..1 and
    oppositionDate 0..1

// 	typeCarte
* extension[type] ^short = "typeCarte : Type de carte de professionnel (CPx)"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J128-TypeCarte-RASS (extensible)

// numeroCarte
* extension[number] ^short = "numeroCarte : Numéro de carte du professionnel."
* extension[number].value[x] only string
* extension[number].valueString ^short = "Numéro de carte du professionnel."

// periodValidite
* extension[period] ^short = "Période de validité de la carte."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^short = "dateDebutValidite : Date de début de validité de la carte"
* extension[period].valuePeriod.end ^short = "dateFinValidite : Date de fin de validité de la carte"

// dateOpposition
* extension[oppositionDate] ^short = "dateOpposition : Date de mise en opposition de la carte."
* extension[oppositionDate].value[x] only dateTime