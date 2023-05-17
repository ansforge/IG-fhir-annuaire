Profile: 		AsDpPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"Profil créé à partir de as-practitioner dans le contexte des données en libre accès."

* identifier 1..*
* identifier.period 0..0
* identifier.assigner 0..0 

* active 1..1 // 'true' par défaut, 'false' pour notifier aux clients du mode delta les practitioner supprimées entre 2 dates, dans ce cas seuls l'id et le champs active sont renseignés.

* name.use 0..0
* name.text 0..0
* name.family 0..0
* name.given 0..0
* name.prefix 0..1
* name.suffix 0..0
* name.period 0..0


* gender 0..0
* birthDate 0..0
* extension[as-ext-practitioner-birth-place] 0..0
* extension[as-ext-practitioner-nationality] 0..0
* extension[as-ext-practitioner-deceased-date-time] 0..0

* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data

* address 0..0

* photo 0..0

* qualification.identifier 0..0
* qualification.period 0..0 // under discussion
* qualification.issuer 0..0 


// langueParlee
* communication 0..0
