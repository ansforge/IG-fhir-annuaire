Extension: 		AsPractitionerRoleSmartCardExtension
Id: 			as-ext-practitionerrole-smartcard
Title:			"AS PractitionerRole Smart Card Extension"
Description: 	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques."

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ^comment = "Synonyme : CarteProfessionnel ; la carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même, un professionnel exerçant simultanément deux professions a deux cartes."
* . ^short = "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel."

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
* extension[type] ^comment = "Synonyme : typeCarte"
* extension[type] ^short = "Type de carte de professionnel (CPx)"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J128-TypeCarte-RASS (extensible)


// numeroCarte
* extension[number] ^comment = "Synonyme : numeroCarte"
* extension[number] ^short = "Numéro de carte du professionnel."
* extension[number].value[x] only string
// periodValidite
* extension[period] ^short = "Période de validité de la carte."
* extension[period].value[x] only Period
* extension[period].valuePeriod.start ^comment = "Synonyme : dateDebutValidite"
* extension[period].valuePeriod.start ^short = "Date de début de validité de la carte."
* extension[period].valuePeriod.end ^comment = "Synonyme : dateFinValidite"
* extension[period].valuePeriod.end ^short = "Date de fin de validité de la carte."

// dateOpposition
* extension[cancellationDate] ^comment = "Synonyme : dateOpposition ; une opposition implique la révocation des certifications embarquées dans la carte."
* extension[cancellationDate] ^short = "Date de mise en opposition de la carte."
* extension[cancellationDate].value[x] only dateTime
