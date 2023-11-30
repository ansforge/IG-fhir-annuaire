Profile: 		AsDpPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"Profil applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé."
// identifier
//// cardinalty 
* identifier 1..*
* identifier.period 0..0
* identifier.assigner 0..0 
//// Identifiant interne à portée nationale. Celui-ci peut aussi être inclus dans l'idNatPs.
* identifier contains identifiantInterne 0..1
* identifier[identifiantInterne] ^short = "Identifiant interne à partée nationale du practicien. L'identifiant interne est composé d'un identifiant local propre à une structure et d'un identifiant national."
* identifier[identifiantInterne].system 1..1
* identifier[identifiantInterne].system from as-vs-intern-id-systems (required)
* identifier[identifiantInterne].system ^short = "Système de l'identifiant parmi les valeurs : finess.local.esante.gouv.fr | siren.local.esante.gouv.fr | siret.local.esante.gouv.fr | rpps.local.esante.gouv.fr | adeli.local.esante.gouv.fr"
* identifier[identifiantInterne].value ^short = "Valeur de l'identifiant au format xxxxx/yyyyy où xxxxx est l'identifiant finess/siren/siret/rpps/adeli et yyyyy l'identifiant local."
* identifier[identifiantInterne].type = http://interopsante.org/fhir/CodeSystem/fr-v2-0203#INTRN
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

// telecommunication - boiteLettreMSS
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0
// adresseCorrespondance
* address 0..0
// photo
* photo 0..0
// qualification - Donnees restreintes
* qualification.identifier 0..0
* qualification.period 0..0 
* qualification.issuer 0..0 
* qualification[degree].extension[as-ext-education-level] 0..0 

// langueParlee
* communication 0..0

//
* extension[as-ext-registration] 0..0
* extension[as-ext-smartcard] 0..1
* extension[as-ext-digital-certificate] 0..0 

// mailbox-mss
//* telecom[mailbox-mss].extension[as-mailbox-mss-metadata] 0..0

ValueSet: AsVSInterneIdSystems
Id: as-vs-intern-id-systems
Title: "Internal Id Systems VS"
Description: "Systèmes des identifiants internes"
* include codes from system https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-intern-id-systems


CodeSystem: AsCSInterneIdSystems
Id: as-cs-intern-id-systems
Title: "Internal Id Systems"
Description: "Systèmes des identifiants locaux"
* #finess.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure FINESS"
* #siren.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure SIREN"
* #siret.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure SIRET"
* #rpps.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant du cabinet RPPS"
* #adeli.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant du cabinet ADELI"