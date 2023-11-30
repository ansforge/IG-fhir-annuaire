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
* extension[serialNumber] ^short = "numeroSerie : Numéro de série du certificat.\r\n format de codage des caractères en binaire codé en ASCII."

// dNEmetteur
* extension[issuer].value[x] only string
* extension[issuer] ^short = "dNEmetteur : DN (Distinguished Name \r\n Nom distinctif) de l’autorité de certification (AC) émettrice du certificat.\r\n le format respecte le standard RFC-4514, avec un codage des caractères en UTF8"

// dNSujet
* extension[subject] ^short = "dNSujet : DN (Distinguished Name - Nom distinctif) du porteur du certificat.\r\n codage des caractères en UTF8"
* extension[subject].value[x] only string

// periodValidite
* extension[validity] ^short = "Période de validité du certificat.\r\nLa date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif)."
* extension[validity].value[x] only Period
* extension[validity].valuePeriod.start ^short = "dateDebutValidite : Date et heure (en heure, minute, seconde) de début de validité du certificat."
* extension[validity].valuePeriod.end ^short = "dateFinValidite : Date et heure (en heure, minute, seconde) de fin de validité du certificat."

// domaine
* extension[domain] ^short = "domaine : Ce champ correspond au CN du DNSujet, il contient soit un <FQDN> pour les certificats de type serveur <SSL>, soit un nom applicatif pour les autres certificats.\r\n renseigné uniquement pour les certificats logiciels de portée Structure."  
* extension[domain].value[x] only string

// usage
* extension[keyUsage] ^short = "usage : La clé d’usage (Keyusage) qui détermine l’usage autorisé du certificat.\r\n codage des caractères en binaire codé en ASCII"
* extension[keyUsage].value[x] only string

// valeurBinaire
* extension[value] ^short = "valeurBinaire : Valeur binaire du certificat.\r\n format .crt en hexadécimal, codé en ASCII"
* extension[value].value[x] only Attachment