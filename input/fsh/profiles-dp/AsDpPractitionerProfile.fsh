Profile: 		AsDpPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"Profil applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé."
// identifier
* identifier 1..*
* identifier.period 0..0
* identifier.assigner 0..0 
// active
* active 1..1 // 'true' par défaut, 'false' pour notifier aux clients du mode delta les practitioner supprimées entre 2 dates, dans ce cas seuls l'id et le champs active sont renseignés.
// name
* name.id 0..0
* name.use 0..0
* name.text 0..0
* name.family 0..0
* name.given 0..0
* name.prefix 0..1
* name.suffix 0..0
* name.period 0..0
// gender
* gender 0..0
// birthDate
* birthDate 0..0
// extension : birth-place, nationality, deceased-date-time
* extension[as-ext-practitioner-birth-place] 0..0
* extension[as-ext-practitioner-nationality] 0..0
* extension[as-ext-practitioner-deceased-date-time] 0..0
// telecommunication - boiteLettreMSS
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
// adresseCorrespondance
* address 0..0
// photo
* photo 0..0
// qualification
* qualification.identifier 0..0
* qualification.period 0..0 // under discussion
* qualification.issuer 0..0 
// langueParlee
* communication 0..0
