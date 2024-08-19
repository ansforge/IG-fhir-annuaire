Extension: 		AsMailboxMSSMetadataExtension
Id: 			as-ext-mailbox-mss-metadata
Title:			"AS Mailbox Metadata"
Description: 	"Extension contenant les métadonnées de la mailbox mss."

* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    type 0..1 and
    description 0..1 and
    responsible 0..1 and
    service 0..1 and
    phone 0..1 and
    digitization 0..1 and
    publication 0..1

// typeBAL
* extension[type] ^short = "typeBAL : Type de boîte aux lettres.\r\nValeurs possibles :\r\nORG pour une BAL organisationnelle;\r\nAPP pour une BAL applicative;\r\nPER pour une BAL personnelle, rattachée à une personne physique"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J139-TypeBAL-RASS (required)

// responsable
* extension[responsible].value[x] only string
* extension[responsible] ^short = "responsable : Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres \"PER\"."

// description
* extension[description].value[x] only string
* extension[description] ^short = "description : Description fonctionnelle de la boîte aux lettres."

// serviceRattachement
* extension[service].value[x] only string
* extension[service] ^short = "serviceRattachement : Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation."

// telephone
* extension[phone].value[x] only string
* extension[phone] ^short = "telephone : Coordonnées téléphoniques spécifiques à l’usage de la boîte aux lettres MSSanté."

// dematerialisation
* extension[digitization].value[x] only boolean
* extension[digitization] ^short = "dematerialisation : Indicateur d’acceptation de la dématérialisation (ou « Zéro papier »). - O : Dématérialisation acceptée \r\n- N : Dématérialisation refusée."

// listeRouge
* extension[publication].value[x] only boolean
* extension[publication] ^short = "listeRouge : Indicateur liste rouge. O: Boîte aux lettres en liste rouge;\r\nN: La boîte aux lettres peut être publiée"