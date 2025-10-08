Profile: 		AsDpPractitionerRoleProfile
Parent: 		as-practitionerrole
Id: 			as-dp-practitionerrole
Title:			"AS Donnée Publique PractitionerRole Profile"
Description: 	"""Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement."""

* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-practitionerrole)
* meta.profile[fr-canonical] 1..1


* extension[as-ext-practitionerrole-contracted] 0..0
* extension[as-ext-practitionerrole-hascas] 0..0
* extension[as-ext-practitionerrole-vitale-accepted] 0..0

* practitioner MS 
* organization MS
* healthcareService MS
* identifier MS
* active MS
* period MS
* code[genreActivite] MS
* code[modeExercice] MS
* code[typeActiviteLiberale] MS
* code[statutProfessionnelSSA] MS
* code[statutHospitalier] MS
* code[fonction] MS
* code[metierPharmacien] MS
* telecom MS
* availableTime MS
* notAvailable MS
* availabilityExceptions MS
* endpoint MS

* insert rs-as-core
* meta.extension[as-ext-data-trace] MS

* identifier[idSituationExercice] 1..1 MS

* practitioner 1..1 
* organization 0..1
* healthcareService 0..0

* active 1..1
* period 0..0
* specialty 0..0
* telecom ^slicing.rules = #closed // only boiteLettreMSS is an open data
// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0
