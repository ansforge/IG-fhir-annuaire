Extension: 		AsDigitalCertificateExtension
Id: 			as-ext-digital-certificate
Title:			"AS Digital Certificate Extension"
Description:	"Extension créée dans le cadre de l'Annuaire Santé pour décrire les certificats utilisés par les professionnels et les structures comme moyen d'identification."

* ^context[0].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "Organization"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    serialNumber 0..1 and 
    issuer 0..1 and
    subject 0..1 and
    validity 0..1 and
    domain 0..1 and
    keyUsage 0..1 and
    value 0..1 
// numeroSerie
* extension[serialNumber].value[x] only string
* extension[serialNumber] ^short = "Numéro de série du certificat."
* extension[serialNumber] ^comment = "Synonyme MOS : numeroSerie ; format de codage des caractères en binaire codé en ASCII."

// dNEmetteur
* extension[issuer].value[x] only string
* extension[issuer] ^short = "DN (Distinguished Name - Nom distinctif) de l’autorité de certification (AC) émettrice du certificat"
* extension[issuer] ^comment = "Synonyme MOS : dNEmetteur ; le format respecte le standard RFC-4514, avec un codage des caractères en UTF8"

// dNSujet
* extension[subject] ^short = "DN (Distinguished Name - Nom distinctif) du porteur du certificat"
* extension[subject] ^comment = "Synonyme MOS : dNSujet ; codage des caractères en UTF8"
* extension[subject].value[x] only string

// periodValidite
* extension[validity] ^short = "Période de validité du certificat."
* extension[validity] ^comment = "Synonyme MOS : periodValidite ; la date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif)."
* extension[validity].value[x] only Period
* extension[validity].valuePeriod.start ^comment = "Synonyme MOS : dateDebutValidite"
* extension[validity].valuePeriod.start ^short = "Date et heure (en heure, minute, seconde) de début de validité du certificat."
* extension[validity].valuePeriod.end ^comment = "Synonyme MOS : dateFinValidite"
* extension[validity].valuePeriod.end ^short = "Date et heure (en heure, minute, seconde) de fin de validité du certificat."

// domaine
* extension[domain] ^short = "Ce champ correspond au CN du DNSujet, il contient soit un <FQDN> pour les certificats de type serveur <SSL>, soit un nom applicatif pour les autres certificats."  
* extension[domain] ^comment = "Synonyme MOS : domaine ; renseigné uniquement pour les certificats logiciels de portée Structure."
* extension[domain].value[x] only string

// usage
* extension[keyUsage] ^short = "La clé d’usage (Keyusage) qui détermine l’usage autorisé du certificat."
* extension[keyUsage] ^comment = "Synonyme MOS : usage ; codage des caractères en binaire codé en ASCII"
* extension[keyUsage].value[x] only string

// valeurBinaire
* extension[value] ^short = "Valeur binaire du certificat."
* extension[value] ^comment = "Synonyme MOS : valeurBinaire ; format .crt en hexadécimal, codé en ASCII"
* extension[value].value[x] only Attachment