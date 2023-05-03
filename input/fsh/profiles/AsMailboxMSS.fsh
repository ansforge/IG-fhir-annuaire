Profile: AsMailboxMSS
Parent: FrContactPoint
Id: 			as-mailbox-mss
Title:			"AS Mailbox MSS Datatype Profile"
Description: 	"Profil du type dedonnées ContactPoint créé dans le cadre de l'annuaire santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures."

// * ^context[0].type = #element
// * ^context[=].expression = "Practitioner"
// * ^context[+].type = #element
// * ^context[=].expression = "PractitionerRole"
// * ^context[+].type = #element
// * ^context[=].expression = "Organization"

* system = #email
* value ^short = "BAL MSS"
* value MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains as-mailbox-mss-metadata named as-mailbox-mss-metadata 0..1