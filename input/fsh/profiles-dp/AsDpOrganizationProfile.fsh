Profile: AsDpOrganizationProfile
Parent: as-organization
Id: as-dp-organization
Title: "AS Donnée Publique Organization Profile"
Description: """Profil public applicatif créé à partir du profil générique as-organization  dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement."""

* meta.profile contains as-dp-canonical 1..1
* meta.profile[as-dp-canonical] = Canonical(as-dp-organization)
* meta.profile[fr-canonical] 1..1

* extension[as-ext-digital-certificate] 0..0


* identifier.period 0..0
* identifier.assigner 0..0


// * identifier[idNatSt] 0..1 ^sliceName = "idNatSt"

* active 1..1
* contact 0..0
* endpoint 0..0
// mailbox-mss - Donnees privees
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[responsible] 0..0
* telecom[mailbox-mss].extension[as-mailbox-mss-metadata].extension[phone] 0..0
* telecom.period 0..0 // telecom is used to show mail, fax, or org phone. History is only available for DR 