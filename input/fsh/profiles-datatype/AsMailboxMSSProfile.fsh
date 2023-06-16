Profile: AsMailboxMSSProfile
Parent: FrContactPoint
Id: 			as-mailbox-mss
Title:			"AS Mailbox MSS Datatype Profile"
Description: 	"Datatype profile créé à partir ContactPoint dans le cadre de l'Annuaire Santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures."

* system = #email
* value ^short = "Boîte Aux Lettres (BAL) MSS"
* value MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains as-ext-mailbox-mss-metadata named as-mailbox-mss-metadata 0..1
