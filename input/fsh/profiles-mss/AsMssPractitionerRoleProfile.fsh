Profile:     AsMssPractitionerRoleProfile
Parent:      as-practitionerrole
Id:          as-mss-practitionerrole
Title:       "AS MSS PractitionerRole Profile"
Description: """Profil PractitionerRole pour l'endpoint de gestion des BAL MSSanté. Ce profil garantit qu'au moins une BAL MSSanté de type PER est présente sur la situation d'exercice. Il est utilisé en lecture (GET) pour récupérer les situations d'exercice avec leurs BAL, et en écriture (PATCH FHIRPath) pour modifier les métadonnées d'une BAL existante, en créer une nouvelle ou en supprimer une."""

* identifier[idSituationExercice] MS
* practitioner MS

// Au moins une BAL MSSanté est requise
* telecom[mailbox-mss] 1..* MS
