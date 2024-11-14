Profile: AsMailboxMSSProfile
Parent: fr-core-contact-point
Id: 			as-mailbox-mss
Title:			"AS Mailbox MSS Datatype Profile"
Description: 	"Datatype profile créé à partir ContactPoint dans le cadre de l'Annuaire Santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures."

* system = #email
* value ^short = "Boîte Aux Lettres (BAL) MSS"
* value MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension[emailType] 1..1

// Extension emailType définie dans FrContactPoint
* extension[emailType].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie#MSSANTE

* extension contains as-ext-mailbox-mss-metadata named as-mailbox-mss-metadata 0..1
* extension[as-mailbox-mss-metadata] ^short = "Les attributs 'responsible' et 'phone' ne sont pas disponibles en accès libre."
