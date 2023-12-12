Profile: AsDpOrganizationProfile
Parent: as-organization
Id: as-dp-organization
Title: "AS Donnée Publique Organization Profile"
Description: "Profil public applicatif créé à partir du profil générique as-organization  dans le contexte des données en libre accès de l’Annuaire Santé."

// Organization.identifier - slice identifiantInterne
* identifier contains identifiantInterne 0..1
* identifier[identifiantInterne] ^short = "Identifiant interne à porté nationale des structures enregistrées au RPPS sans aucun identifiant métier.\nIl est composé de 14 chiffres.\nIl s’agit généralement de structures enregistrées temporairement par les ordres, en attente de vérification ou de changement d’identifiant."
* identifier[identifiantInterne].type = http://interopsante.org/CodeSystem/fr-v2-0203#INTRN
* identifier[identifiantInterne].system = "http://rpps.interne.esante.gouv.fr"

* identifier.period 0..0
* identifier.assigner 0..0
* active 1..1
* contact 0..0
* extension[as-ext-digital-certificate] 0..0
* endpoint 0..0
// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0
* telecom.period 0..0 // telecom is used to show mail, fax, or org phone. History is only available for DR 