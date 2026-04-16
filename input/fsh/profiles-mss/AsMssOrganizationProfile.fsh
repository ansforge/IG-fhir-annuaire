Profile:     AsMssOrganizationProfile
Parent:      as-organization
Id:          as-mss-organization
Title:       "AS MSS Organization Profile"
Description: """Profil MSS Organization pour l'endpoint de gestion des BAL MSSanté. Ce profil garantit qu'au moins une BAL MSSanté (de type ORG ou APP) est présente sur la structure. Il est utilisé en lecture (GET) pour récupérer les structures avec leurs BAL, et en écriture (PATCH FHIRPath) pour modifier les métadonnées d'une BAL existante, en créer une nouvelle ou en supprimer une."""

* identifier MS
* identifier[idNatSt] MS

// Au moins une BAL MSSanté est requise
* telecom[mailbox-mss] 1..* MS
