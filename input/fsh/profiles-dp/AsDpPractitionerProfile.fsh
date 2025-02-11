Profile: 		AsDpPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"""Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement."""

* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-practitioner)
* meta.profile[fr-canonical] 1..1


// identifier
//// cardinalty 
* identifier.period 0..0
* identifier.assigner 0..0 

* identifier[idNatPs] 1..1 MS
* identifier[rpps] 1..1 MS

// active

* active 1..1 // 'true' par défaut, 'false' pour notifier aux clients du mode delta les practitioner supprimées entre 2 dates, dans ce cas seuls l'id et le champs active sont renseignés.
// name
* name 0..1
// telecommunication - boiteLettreMSS
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0

// adresseCorrespondance
* address 0..0

// qualification - Donnees restreintes
* qualification.period 0..0

* qualification[degree].issuer 0..0
* qualification[degree].extension[as-ext-education-level] 0..0 

// langueParlee
* communication 0..0

// extensions
* extension[as-ext-registration] 0..0
* extension[as-ext-frpractitioner-authorization] 0..0
* extension[as-ext-digital-certificate] 0..0

ValueSet: AsVSInterneIdSystems
Id: as-vs-intern-id-systems
Title: "AS ValueSet Internal Identifier Systems"
Description: "ValueSet contenant les identifiants internes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-intern-id-systems

// SVS profile
* ^experimental = false


CodeSystem: AsCSInterneIdSystems
Id: as-cs-intern-id-systems
Title: "AS CodeSystem Internal Identifier Systems"
Description: "CodeSystem contenant les identifiants locaux"
* #finess.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure FINESS"
* #siren.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure SIREN"
* #siret.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant de la structure SIRET"
* #rpps.interne.esante.gouv.fr "Système de l'identifiant interne basé sur l'identifiant du cabinet RPPS"
