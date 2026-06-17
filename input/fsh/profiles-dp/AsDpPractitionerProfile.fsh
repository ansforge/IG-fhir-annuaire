Profile: 		AsDpPractitionerProfile
Parent: 		as-practitioner
Id: 			as-dp-practitioner
Title:			"AS Donnée Publique Practitioner Profile"
Description: 	"""Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement."""

* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-practitioner)
* meta.profile[fr-canonical] 1..1

// extensions
* extension[as-ext-registration] 0..0 // inscription à l'ordre

* extension[as-ext-frpractitioner-authorization] MS 
//AutorisationExercice : Il s'agit d'une autorisation délivrée par le Ministère de la Santé ou par l'Ordre au professionnel pour accès à l'exercice de la profession.

* extension[as-ext-digital-certificate] 0..0

* extension[as-ext-smartcard] MS
* extension[as-ext-smartcard].extension[oppositionDate] 0..0

* identifier[idNatPs] MS
* identifier[rpps] MS

* insert rs-as-core
* meta.extension[as-ext-data-trace] MS

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
* name.period 0..0


// telecommunication - boiteLettreMSS
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
* telecom[mailbox-mss] MS

// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[listeRouge] 0..0

* gender 0..0
* birthDate 0..0
* photo 0..0

// adresseCorrespondance
* address 0..0

// qualification - Donnees restreintes
* qualification.period 0..0

* qualification[degree].issuer 0..0
* qualification[degree].extension[as-ext-education-level] 0..0 

* qualification[savoirFaire].code.coding[savoirFaire] ^short = "Compétence acquise par le professionnel (competence) R39 ou Compétence exclusive exercée par le professionnel à titre exclusif (competenceExclusive) R40 ou Diplôme d'études spécialisées complémentaires (DESC)DESCnonQualifian R42 ou Capacité (savoir-faire)de médecine (capaciteSavoirFaire) R43 ou Qualification de praticien adjoint contractuel (qualificationPAC) R44 ou Fonction qualifiée (Synonyme: fonctionQualifiee) R45 ou Droit d'exercice complémentaire (Synonyme: droitExerciceComplementaire) R97."

// langueParlee
* communication 0..0



