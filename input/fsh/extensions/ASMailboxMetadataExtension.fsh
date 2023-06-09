Extension: 		AsMailboxMSSMetadataExtension
Id: 			as-ext-mailbox-mss-metadata
Title:			"AS Mailbox Metadata"
Description: 	"Extension contenant les métadonnées de la mailbox mss."

* ^context[0].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "Organization"

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
* extension[type] ^short = "Type de boîte aux lettres."
* extension[type] ^comment = "Synonyme : typeBAL \r\nValeurs possibles :\r\nORG pour une BAL organisationnelle;\r\nAPP pour une BAL applicative;\r\nPER pour une BAL personnelle, rattachée à une personne physique"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $JDV-J139-TypeBAL-RASS (required)
* extension[type].valueCodeableConcept ^binding.description = "Type de  boîte aux lettre MSS"

// responsable
* extension[responsible].value[x] only string
* extension[responsible] ^short = "Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres \"PER\"."
* extension[responsible] ^comment = "Synonyme : responsable"

// description
* extension[description].value[x] only string
* extension[description] ^short = "Description fonctionnelle de la boîte aux lettres."
* extension[description] ^comment = "Synonyme : description"

// serviceRattachement
* extension[service].value[x] only string
* extension[service] ^short = "Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation."
* extension[service] ^comment = "Synonyme : serviceRattachement"

// telephone
* extension[phone].value[x] only string
* extension[phone] ^short = "Coordonnées téléphoniques spécifiques à l’usage de la boîte aux lettres MSSanté."
* extension[phone] ^comment = "Synonyme : telephone"

// dematerialisation
* extension[digitization].value[x] only boolean
* extension[digitization] ^short = "Indicateur d’acceptation de la dématérialisation (ou « Zéro papier »). - O : Dématérialisation acceptée \r\n- N : Dématérialisation refusée."
* extension[digitization] ^comment = "Synonyme : dematerialisation"

// listeRouge
* extension[publication].value[x] only boolean
* extension[publication] ^short = "Indicateur liste rouge. O: Boîte aux lettres en liste rouge;\r\nN: La boîte aux lettres peut être publiée"
* extension[publication] ^comment = "Synonyme : listeRouge"