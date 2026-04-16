Profile:     AsMssPractitionerProfile
Parent:      as-practitioner
Id:          as-mss-practitioner
Title:       "AS MSS Practitioner Profile"
Description: """Profil MSS Practitioner pour l'endpoint de gestion des BAL MSSanté. Ce profil garantit qu'au moins une BAL MSSanté est présente sur le professionnel. Il est utilisé en lecture (GET) pour récupérer les professionnels avec leurs BAL, et en écriture (PATCH FHIRPath) pour modifier les métadonnées d'une BAL existante, en créer une nouvelle ou en supprimer une."""

* identifier MS
* identifier[idNatPs] MS
* identifier[rpps] MS

// Au moins une BAL MSSanté est requise
* telecom[mailbox-mss] 1..* MS
